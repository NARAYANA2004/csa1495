%{
int nmacro, nheader; 
%}
%%
^#define { nmacro++; } 
^#include { nheader++; } 
.|\n { } 
%%
int yywrap() 
{ 
return 1; 
} 
int main(int argc, char *argv[]) 
{ 
printf("enter the string:\n");
yylex(); 
printf("Number of macros defined = %d\n", nmacro); 
printf("Number of header files included = %d\n", nheader); 
}
