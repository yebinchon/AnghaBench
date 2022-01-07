
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISSPACE (char const) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int tokenLength (char const*,int*) ;

__attribute__((used)) static int findEndif(const char *z, int stopAtElse, int *pnLine){
  int n = 0;
  while( z[n] ){
    int len = tokenLength(z+n, pnLine);
    if( (strncmp(z+n,"--endif",7)==0 && ISSPACE(z[n+7]))
     || (stopAtElse && strncmp(z+n,"--else",6)==0 && ISSPACE(z[n+6]))
    ){
      return n+len;
    }
    if( strncmp(z+n,"--if",4)==0 && ISSPACE(z[n+4]) ){
      int skip = findEndif(z+n+len, 0, pnLine);
      n += skip + len;
    }else{
      n += len;
    }
  }
  return n;
}
