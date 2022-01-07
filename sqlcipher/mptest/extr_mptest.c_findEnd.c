
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ISSPACE (char const) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 scalar_t__ tokenLength (char const*,int*) ;

__attribute__((used)) static int findEnd(const char *z, int *pnLine){
  int n = 0;
  while( z[n] && (strncmp(z+n,"--end",5) || !ISSPACE(z[n+5])) ){
    n += tokenLength(z+n, pnLine);
  }
  return n;
}
