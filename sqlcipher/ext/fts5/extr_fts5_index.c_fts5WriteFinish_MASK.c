#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  buf; } ;
struct TYPE_15__ {scalar_t__ rc; } ;
struct TYPE_12__ {int n; } ;
struct TYPE_14__ {int pgno; TYPE_11__ pgidx; TYPE_11__ buf; TYPE_11__ term; } ;
struct TYPE_13__ {int nDlidx; TYPE_4__* aDlidx; TYPE_11__ btterm; TYPE_2__ writer; } ;
typedef  TYPE_1__ Fts5SegWriter ;
typedef  TYPE_2__ Fts5PageWriter ;
typedef  TYPE_3__ Fts5Index ;

/* Variables and functions */
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC6(
  Fts5Index *p, 
  Fts5SegWriter *pWriter,         /* Writer object */
  int *pnLeaf                     /* OUT: Number of leaf pages in b-tree */
){
  int i;
  Fts5PageWriter *pLeaf = &pWriter->writer;
  if( p->rc==SQLITE_OK ){
    FUNC0( pLeaf->pgno>=1 );
    if( pLeaf->buf.n>4 ){
      FUNC3(p, pWriter);
    }
    *pnLeaf = pLeaf->pgno-1;
    if( pLeaf->pgno>1 ){
      FUNC2(p, pWriter);
    }
  }
  FUNC1(&pLeaf->term);
  FUNC1(&pLeaf->buf);
  FUNC1(&pLeaf->pgidx);
  FUNC1(&pWriter->btterm);

  for(i=0; i<pWriter->nDlidx; i++){
    FUNC4(&pWriter->aDlidx[i].buf);
  }
  FUNC5(pWriter->aDlidx);
}