
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int hasSideEffect(const char *z, unsigned int n){
  unsigned int i;
  for(i=0; i<n; i++){
    if( z[i]=='/' && strncmp(&z[i], "/*side-effects-ok*/", 19)==0 ) return 0;
    if( z[i]=='=' && i>0 && z[i-1]!='=' && z[i-1]!='>'
           && z[i-1]!='<' && z[i-1]!='!' && z[i+1]!='=' ) return 1;
    if( z[i]=='+' && z[i+1]=='+' ) return 1;
    if( z[i]=='-' && z[i+1]=='-' ) return 1;
  }
  return 0;
}
