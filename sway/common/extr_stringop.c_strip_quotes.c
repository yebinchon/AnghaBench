
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (char*,char*,int) ;
 char* strchr (char*,int ) ;

void strip_quotes(char *str) {
 bool in_str = 0;
 bool in_chr = 0;
 bool escaped = 0;
 char *end = strchr(str,0);
 while (*str) {
  if (*str == '\'' && !in_str && !escaped) {
   in_chr = !in_chr;
   goto shift_over;
  } else if (*str == '\"' && !in_chr && !escaped) {
   in_str = !in_str;
   goto shift_over;
  } else if (*str == '\\') {
   escaped = !escaped;
   ++str;
   continue;
  }
  escaped = 0;
  ++str;
  continue;
  shift_over:
  memmove(str, str+1, end-- - str);
 }
 *end = '\0';
}
