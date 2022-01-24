#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  aToken ;
struct TYPE_4__ {char const* z; int n; } ;
typedef  TYPE_1__ Token ;

/* Variables and functions */
 int TOKEN_SPACE ; 
 int FUNC0 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static char **FUNC5(const char *z, int *pnToken){
  int nToken = 0;
  Token *aToken = FUNC3( FUNC4(z) * sizeof(aToken[0]) );
  int n = 1;
  int e, i;
  int totalSize = 0;
  char **azToken;
  char *zCopy;
  while( n>0 ){
    n = FUNC0(z, &e);
    if( e!=TOKEN_SPACE ){
      aToken[nToken].z = z;
      aToken[nToken].n = n;
      nToken++;
      totalSize += n+1;
    }
    z += n;
  }
  azToken = (char**)FUNC3( nToken*sizeof(char*) + totalSize );
  zCopy = (char*)&azToken[nToken];
  nToken--;
  for(i=0; i<nToken; i++){
    azToken[i] = zCopy;
    n = aToken[i].n;
    FUNC1(zCopy, aToken[i].z, n);
    zCopy[n] = 0;
    zCopy += n+1;
  }
  azToken[nToken] = 0;
  FUNC2(aToken);
  *pnToken = nToken;
  return azToken;
}