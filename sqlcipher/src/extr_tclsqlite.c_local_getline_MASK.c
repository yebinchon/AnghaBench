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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 char* FUNC3 (char*,int) ; 

__attribute__((used)) static char *FUNC4(char *zPrompt, FILE *in){
  char *zLine;
  int nLine;
  int n;

  nLine = 100;
  zLine = FUNC2( nLine );
  if( zLine==0 ) return 0;
  n = 0;
  while( 1 ){
    if( n+100>nLine ){
      nLine = nLine*2 + 100;
      zLine = FUNC3(zLine, nLine);
      if( zLine==0 ) return 0;
    }
    if( FUNC0(&zLine[n], nLine - n, in)==0 ){
      if( n==0 ){
        FUNC1(zLine);
        return 0;
      }
      zLine[n] = 0;
      break;
    }
    while( zLine[n] ){ n++; }
    if( n>0 && zLine[n-1]=='\n' ){
      n--;
      zLine[n] = 0;
      break;
    }
  }
  zLine = FUNC3( zLine, n+1 );
  return zLine;
}