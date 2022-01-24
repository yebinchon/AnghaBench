#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ n; int /*<<< orphan*/  p; } ;
struct TYPE_6__ {scalar_t__ pgno; scalar_t__ bPrevValid; TYPE_3__ buf; } ;
struct TYPE_5__ {int nDlidx; int /*<<< orphan*/  iSegid; TYPE_2__* aDlidx; } ;
typedef  TYPE_1__ Fts5SegWriter ;
typedef  int /*<<< orphan*/  Fts5Index ;
typedef  TYPE_2__ Fts5DlidxWriter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC4(
  Fts5Index *p, 
  Fts5SegWriter *pWriter,
  int bFlush                      /* If true, write dlidx to disk */
){
  int i;
  FUNC1( bFlush==0 || (pWriter->nDlidx>0 && pWriter->aDlidx[0].buf.n>0) );
  for(i=0; i<pWriter->nDlidx; i++){
    Fts5DlidxWriter *pDlidx = &pWriter->aDlidx[i];
    if( pDlidx->buf.n==0 ) break;
    if( bFlush ){
      FUNC1( pDlidx->pgno!=0 );
      FUNC2(p, 
          FUNC0(pWriter->iSegid, i, pDlidx->pgno),
          pDlidx->buf.p, pDlidx->buf.n
      );
    }
    FUNC3(&pDlidx->buf);
    pDlidx->bPrevValid = 0;
  }
}