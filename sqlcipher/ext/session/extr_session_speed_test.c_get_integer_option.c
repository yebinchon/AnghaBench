
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CmdLineOption ;


 int option_requires_argument_error (int *) ;

__attribute__((used)) static int get_integer_option(CmdLineOption *pOpt, const char *zArg){
  int i = 0;
  int iRet = 0;
  int bSign = 1;
  if( zArg[0]=='-' ){
    bSign = -1;
    i = 1;
  }
  while( zArg[i] ){
    if( zArg[i]<'0' || zArg[i]>'9' ) option_requires_argument_error(pOpt);
    iRet = iRet*10 + (zArg[i] - '0');
    i++;
  }
  return (iRet*bSign);
}
