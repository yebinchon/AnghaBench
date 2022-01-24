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
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  db ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 scalar_t__ FUNC1 (unsigned char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static unsigned char *FUNC6(int N, int iOfst){
  int got;
  unsigned char *pBuf = FUNC3(N);
  if( pBuf==0 ) FUNC5();
  FUNC2(db, iOfst, SEEK_SET);
  got = (int)FUNC1(pBuf, 1, N, db);
  if( got<0 ){
    FUNC0(stderr, "I/O error reading %d bytes from %d\n", N, iOfst);
    FUNC4(pBuf, 0, N);
  }else if( got<N ){
    FUNC0(stderr, "Short read: got only %d of %d bytes from %d\n",
                     got, N, iOfst);
    FUNC4(&pBuf[got], 0, N-got);
  }
  return pBuf;
}