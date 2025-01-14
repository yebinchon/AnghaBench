
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int aToken ;
struct TYPE_4__ {char const* z; int n; } ;
typedef TYPE_1__ Token ;


 int TOKEN_SPACE ;
 int free (TYPE_1__*) ;
 int getToken (char const*,int*) ;
 TYPE_1__* malloc (int) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static char **tokenizeString(const char *z, int *pnToken){
  int nToken = 0;
  Token *aToken = malloc( strlen(z) * sizeof(aToken[0]) );
  int n = 1;
  int e, i;
  int totalSize = 0;
  char **azToken;
  char *zCopy;
  while( n>0 ){
    n = getToken(z, &e);
    if( e!=TOKEN_SPACE ){
      aToken[nToken].z = z;
      aToken[nToken].n = n;
      nToken++;
      totalSize += n+1;
    }
    z += n;
  }
  azToken = (char**)malloc( nToken*sizeof(char*) + totalSize );
  zCopy = (char*)&azToken[nToken];
  nToken--;
  for(i=0; i<nToken; i++){
    azToken[i] = zCopy;
    n = aToken[i].n;
    memcpy(zCopy, aToken[i].z, n);
    zCopy[n] = 0;
    zCopy += n+1;
  }
  azToken[nToken] = 0;
  free(aToken);
  *pnToken = nToken;
  return azToken;
}
