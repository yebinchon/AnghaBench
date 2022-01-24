#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ i64 ;
struct TYPE_3__ {int* aPoslist; int nSize; int nPoslist; int* aEof; int /*<<< orphan*/  iRowid; } ;
typedef  TYPE_1__ Fts5DoclistIter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int*,int) ; 

__attribute__((used)) static void FUNC3(Fts5DoclistIter *pIter){
  u8 *p = pIter->aPoslist + pIter->nSize + pIter->nPoslist;

  FUNC0( pIter->aPoslist );
  if( p>=pIter->aEof ){
    pIter->aPoslist = 0;
  }else{
    i64 iDelta;

    p += FUNC1(p, (u64*)&iDelta);
    pIter->iRowid += iDelta;

    /* Read position list size */
    if( p[0] & 0x80 ){
      int nPos;
      pIter->nSize = FUNC2(p, nPos);
      pIter->nPoslist = (nPos>>1);
    }else{
      pIter->nPoslist = ((int)(p[0])) >> 1;
      pIter->nSize = 1;
    }

    pIter->aPoslist = p;
  }
}