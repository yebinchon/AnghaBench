#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 

__attribute__((used)) static char *FUNC3(
  char **azArg,
  int *pnArg,
  const char *zOption,
  int hasArg
){
  int i, j;
  char *zReturn = 0;
  int nArg = *pnArg;

  FUNC0( hasArg==0 || hasArg==1 );
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
    if( FUNC2(z,zOption)==0 ){
      if( hasArg && i==nArg-1 ){
        FUNC1("command-line option \"--%s\" requires an argument", z);
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