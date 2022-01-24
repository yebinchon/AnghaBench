#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int i64 ;
struct TYPE_19__ {scalar_t__ n; int* p; } ;
struct TYPE_18__ {int pgno; int bPrevValid; int iPrev; TYPE_6__ buf; } ;
struct TYPE_17__ {scalar_t__ rc; TYPE_1__* pConfig; } ;
struct TYPE_15__ {int pgno; } ;
struct TYPE_16__ {TYPE_2__ writer; TYPE_5__* aDlidx; int /*<<< orphan*/  iSegid; } ;
struct TYPE_14__ {scalar_t__ pgsz; } ;
typedef  TYPE_3__ Fts5SegWriter ;
typedef  TYPE_4__ Fts5Index ;
typedef  TYPE_5__ Fts5DlidxWriter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int*,scalar_t__) ; 
 int FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 

__attribute__((used)) static void FUNC7(
  Fts5Index *p, 
  Fts5SegWriter *pWriter, 
  i64 iRowid
){
  int i;
  int bDone = 0;

  for(i=0; p->rc==SQLITE_OK && bDone==0; i++){
    i64 iVal;
    Fts5DlidxWriter *pDlidx = &pWriter->aDlidx[i];

    if( pDlidx->buf.n>=p->pConfig->pgsz ){
      /* The current doclist-index page is full. Write it to disk and push
      ** a copy of iRowid (which will become the first rowid on the next
      ** doclist-index leaf page) up into the next level of the b-tree 
      ** hierarchy. If the node being flushed is currently the root node,
      ** also push its first rowid upwards. */
      pDlidx->buf.p[0] = 0x01;    /* Not the root node */
      FUNC2(p, 
          FUNC0(pWriter->iSegid, i, pDlidx->pgno),
          pDlidx->buf.p, pDlidx->buf.n
      );
      FUNC4(p, pWriter, i+2);
      pDlidx = &pWriter->aDlidx[i];
      if( p->rc==SQLITE_OK && pDlidx[1].buf.n==0 ){
        i64 iFirst = FUNC3(&pDlidx->buf);

        /* This was the root node. Push its first rowid up to the new root. */
        pDlidx[1].pgno = pDlidx->pgno;
        FUNC5(&p->rc, &pDlidx[1].buf, 0);
        FUNC5(&p->rc, &pDlidx[1].buf, pDlidx->pgno);
        FUNC5(&p->rc, &pDlidx[1].buf, iFirst);
        pDlidx[1].bPrevValid = 1;
        pDlidx[1].iPrev = iFirst;
      }

      FUNC6(&pDlidx->buf);
      pDlidx->bPrevValid = 0;
      pDlidx->pgno++;
    }else{
      bDone = 1;
    }

    if( pDlidx->bPrevValid ){
      iVal = iRowid - pDlidx->iPrev;
    }else{
      i64 iPgno = (i==0 ? pWriter->writer.pgno : pDlidx[-1].pgno);
      FUNC1( pDlidx->buf.n==0 );
      FUNC5(&p->rc, &pDlidx->buf, !bDone);
      FUNC5(&p->rc, &pDlidx->buf, iPgno);
      iVal = iRowid;
    }

    FUNC5(&p->rc, &pDlidx->buf, iVal);
    pDlidx->bPrevValid = 1;
    pDlidx->iPrev = iRowid;
  }
}