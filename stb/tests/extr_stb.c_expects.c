
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_matcher ;


 int c (int,char*) ;
 int stb_lex (int *,char*,int*) ;

char *expects(stb_matcher *m, char *s, int result, int len, char *str)
{
   int res2,len2=0;
   res2 = stb_lex(m, s, &len2);
   c(result == res2 && len == len2, str);
   return s + len;
}
