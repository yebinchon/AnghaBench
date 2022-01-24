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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int,int,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,int) ; 
 int /*<<< orphan*/  stdin ; 

__attribute__((used)) static int FUNC3(char **pzOut){
  int nAlloc = 128;
  char *zOut = 0;
  int nOut = 0;

  while( !FUNC0(stdin) ){
    int nRead;

    nAlloc = nAlloc*2;
    zOut = FUNC2(zOut, nAlloc);
    nRead = FUNC1(&zOut[nOut], 1, nAlloc-nOut-1, stdin);

    if( nRead==0 ) break;
    nOut += nRead;
    zOut[nOut] = '\0';
  }

  *pzOut = zOut;
  return 0;
}