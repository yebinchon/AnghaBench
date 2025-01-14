
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,int) ;
 char* sqlite3_malloc (int) ;

__attribute__((used)) static char *string_dup_n(const char *s, int n){
  char *str = sqlite3_malloc(n + 1);
  memcpy(str, s, n);
  str[n] = '\0';
  return str;
}
