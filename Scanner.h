// Generated by Flexc++ V0.98.00 on Thu, 31 May 2012 22:26:09 +0300

#ifndef Scanner_H_INCLUDED_
#define Scanner_H_INCLUDED_

// $insert baseclass_h
#include "Scannerbase.h"

#include <stack>
using namespace std;


// $insert classHead
class Scanner: public ScannerBase
{
    public:
        explicit Scanner(std::istream &in = std::cin,
                                std::ostream &out = std::cout);

        Scanner(std::string const &infile, std::string const &outfile);
        
        // $insert lexFunctionDecl
        int lex();

        void PushValue(const std::string& value);
        std::string PopValue();
        std::string SeeValue();

    private:
        std::stack<string> valueStack;

        int lex__();
        int executeAction__(size_t ruleNr);

        void print();
        void preCode();     // re-implement this function for code that must 
                            // be exec'ed before the patternmatching starts
};

// $insert scannerConstructors
inline Scanner::Scanner(std::istream &in, std::ostream &out)
:
    ScannerBase(in, out)
{}

inline Scanner::Scanner(std::string const &infile, std::string const &outfile)
:
    ScannerBase(infile, outfile)
{}

// $insert inlineLexFunction
inline int Scanner::lex()
{
    return lex__();
}

inline void Scanner::preCode() 
{
    // optionally replace by your own code
}

inline void Scanner::print() 
{
    print__();
}

inline void Scanner::PushValue(const std::string& value)
{
    valueStack.push(value);
}
inline std::string Scanner::PopValue()
{
    string val = SeeValue();
    valueStack.pop();
    return val;
}
inline std::string Scanner::SeeValue()
{
    return valueStack.top();
}


#endif // Scanner_H_INCLUDED_
