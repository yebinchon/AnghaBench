
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* string_dup_n (char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static char *string_dup(const char *s){
  return string_dup_n(s, strlen(s));
}
