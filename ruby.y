// keywords
%token IF THEN ELSE ELSIF UNLESS
%token DEF END UNDEF ALIAS DEFINED RETURN
%token TRUE FALSE NIL
%token WHILE FOR BREAK UNTIL RETRY REDO NEXT IN
%token CASE WHEN
%token REQUIRE

// commentaries
%token C_BEGIN C_END

%token TERNARY_THEN TERNARY_ELSE
%token LEFT_RBRACKET RIGHT_RBRACKET
%token LEFT_FBRACKET RIGHT_FBRACKET
%token LEFT_SBRACKET RIGHT_SBRACKET
%token COMMA SEMICOLON								   /* , ; */

// identifiers, numbers and strings
%token ID_GLOBAL ID_METHOD ID LITERAL CHAR
%token NUM_FLOAT NUM_INTEGER

%left DEFINED 									   /* defined? */
%left OR 									   /* || */
%left AND 									   /* && */
%left EQUAL NOT_EQUAL 								   /* == != */
%left LESS_EQUAL LESS GREATER GREATER_EQUAL 					   /* <= < > >= */
%left BIT_OR BIT_XOR 							           /* | ^ */
%left BIT_AND 									   /* & */
%left BIT_SHL BIT_SHR 								   /* << >> */
%left PLUS MINUS 								   /* + - */
%left MUL DIV MOD 								   /* / * % */
%left EXP 									   /* ** */
%right ASSIGN PLUS_ASSIGN MINUS_ASSIGN MUL_ASSIGN DIV_ASSIGN MOD_ASSIGN EXP_ASSIGN /* = += -+ *= /= %= **=  */
%right NOT BIT_NOT 								   /* ! ~ */

%%

phrase : phrase expr
	| expr

;




terms	: term
		| terms term
		;

term	: ';'
		| '\n'
		;

none	: // none
	;

%%
