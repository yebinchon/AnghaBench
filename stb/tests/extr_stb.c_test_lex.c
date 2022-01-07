
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_matcher ;


 char* expects (int *,char*,int,int,char*) ;
 int stb_lex_item (int *,char*,int) ;
 int * stb_lex_matcher () ;
 int stb_matcher_free (int *) ;

void test_lex(void)
{
   stb_matcher *m = stb_lex_matcher();

   char *s = "tok_en5.3 20.1 20. .20.1";

   stb_lex_item(m, "[a-zA-Z_][a-zA-Z0-9_]*", 1 );
   stb_lex_item(m, "[0-9]*\\.?[0-9]*" , 2 );
   stb_lex_item(m, "[\r\n\t ]+" , 3 );
   stb_lex_item(m, "." , -99 );
   s=expects(m,s,1,7, "stb_lex 1");
   s=expects(m,s,2,2, "stb_lex 2");
   s=expects(m,s,3,1, "stb_lex 3");
   s=expects(m,s,2,4, "stb_lex 4");
   s=expects(m,s,3,1, "stb_lex 5");
   s=expects(m,s,2,3, "stb_lex 6");
   s=expects(m,s,3,1, "stb_lex 7");
   s=expects(m,s,2,3, "stb_lex 8");
   s=expects(m,s,2,2, "stb_lex 9");
   s=expects(m,s,0,0, "stb_lex 10");
   stb_matcher_free(m);
}
