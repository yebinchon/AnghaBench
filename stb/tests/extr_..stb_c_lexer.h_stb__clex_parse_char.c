
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int stb__clex_parse_char(char *p, char **q)
{
   if (*p == '\\') {
      *q = p+2;
      switch(p[1]) {
         case '\\': return '\\';
         case '\'': return '\'';
         case '"': return '"';
         case 't': return '\t';
         case 'f': return '\f';
         case 'n': return '\n';
         case 'r': return '\r';
         case '0': return '\0';
         case 'x': case 'X': return -1;
         case 'u': return -1;
      }
   }
   *q = p+1;
   return (unsigned char) *p;
}
