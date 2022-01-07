
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISSPACE (char const) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int clipLength(const char *z){
  int n = (int)strlen(z);
  while( n>0 && ISSPACE(z[n-1]) ){ n--; }
  return n;
}
