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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ i64 ;
typedef  int /*<<< orphan*/  Fts5Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *,char*,int,...) ; 
 int FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(int *pRc, Fts5Buffer *pBuf, const u8 *a, int n){
  i64 iDocid = 0;
  int iOff = 0;

  if( n>0 ){
    iOff = FUNC4(a, (u64*)&iDocid);
    FUNC3(pRc, pBuf, " id=%lld", iDocid);
  }
  while( iOff<n ){
    int nPos;
    int bDel;
    iOff += FUNC2(&a[iOff], &nPos, &bDel);
    FUNC3(pRc, pBuf, " nPos=%d%s", nPos, bDel?"*":"");
    iOff += FUNC1(pRc, pBuf, &a[iOff], FUNC0(n-iOff, nPos));
    if( iOff<n ){
      i64 iDelta;
      iOff += FUNC4(&a[iOff], (u64*)&iDelta);
      iDocid += iDelta;
      FUNC3(pRc, pBuf, " id=%lld", iDocid);
    }
  }

  return iOff;
}