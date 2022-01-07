
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int fatalError (char*,char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static char *findOption(
  char **azArg,
  int *pnArg,
  const char *zOption,
  int hasArg
){
  int i, j;
  char *zReturn = 0;
  int nArg = *pnArg;

  assert( hasArg==0 || hasArg==1 );
  for(i=0; i<nArg; i++){
    const char *z;
    if( i+hasArg >= nArg ) break;
    z = azArg[i];
    if( z[0]!='-' ) continue;
    z++;
    if( z[0]=='-' ){
      if( z[1]==0 ) break;
      z++;
    }
    if( strcmp(z,zOption)==0 ){
      if( hasArg && i==nArg-1 ){
        fatalError("command-line option \"--%s\" requires an argument", z);
      }
      if( hasArg ){
        zReturn = azArg[i+1];
      }else{
        zReturn = azArg[i];
      }
      j = i+1+(hasArg!=0);
      while( j<nArg ) azArg[i++] = azArg[j++];
      *pnArg = i;
      return zReturn;
    }
  }
  return zReturn;
}
