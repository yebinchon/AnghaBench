#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ n; } ;
struct TYPE_9__ {TYPE_4__ buf; int /*<<< orphan*/  bPrevValid; } ;
struct TYPE_8__ {int /*<<< orphan*/  rc; } ;
struct TYPE_7__ {int /*<<< orphan*/  nEmpty; TYPE_3__* aDlidx; scalar_t__ bFirstRowidInPage; } ;
typedef  TYPE_1__ Fts5SegWriter ;
typedef  TYPE_2__ Fts5Index ;
typedef  TYPE_3__ Fts5DlidxWriter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(
  Fts5Index *p,                   /* FTS5 backend object */
  Fts5SegWriter *pWriter          /* Writer object */
){
  /* If there were no rowids on the leaf page either and the doclist-index
  ** has already been started, append an 0x00 byte to it.  */
  if( pWriter->bFirstRowidInPage && pWriter->aDlidx[0].buf.n>0 ){
    Fts5DlidxWriter *pDlidx = &pWriter->aDlidx[0];
    FUNC0( pDlidx->bPrevValid );
    FUNC1(&p->rc, &pDlidx->buf, 0);
  }

  /* Increment the "number of sequential leaves without a term" counter. */
  pWriter->nEmpty++;
}