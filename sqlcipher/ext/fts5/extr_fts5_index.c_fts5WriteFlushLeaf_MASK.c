#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_14__ {scalar_t__ n; int const* p; } ;
struct TYPE_13__ {int /*<<< orphan*/  rc; } ;
struct TYPE_12__ {int /*<<< orphan*/  pgno; scalar_t__ iPrevPgidx; TYPE_9__ buf; TYPE_9__ pgidx; } ;
struct TYPE_11__ {int bFirstTermInPage; int bFirstRowidInPage; int /*<<< orphan*/  nLeafWritten; int /*<<< orphan*/  iSegid; TYPE_2__ writer; } ;
typedef  TYPE_1__ Fts5SegWriter ;
typedef  TYPE_2__ Fts5PageWriter ;
typedef  TYPE_3__ Fts5Index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_9__*,int,int const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int const*,int) ; 
 scalar_t__ FUNC5 (int const*) ; 
 int /*<<< orphan*/  FUNC6 (int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(Fts5Index *p, Fts5SegWriter *pWriter){
  static const u8 zero[] = { 0x00, 0x00, 0x00, 0x00 };
  Fts5PageWriter *pPage = &pWriter->writer;
  i64 iRowid;

  FUNC1( (pPage->pgidx.n==0)==(pWriter->bFirstTermInPage) );

  /* Set the szLeaf header field. */
  FUNC1( 0==FUNC5(&pPage->buf.p[2]) );
  FUNC6(&pPage->buf.p[2], (u16)pPage->buf.n);

  if( pWriter->bFirstTermInPage ){
    /* No term was written to this page. */
    FUNC1( pPage->pgidx.n==0 );
    FUNC7(p, pWriter);
  }else{
    /* Append the pgidx to the page buffer. Set the szLeaf header field. */
    FUNC2(&p->rc, &pPage->buf, pPage->pgidx.n, pPage->pgidx.p);
  }

  /* Write the page out to disk */
  iRowid = FUNC0(pWriter->iSegid, pPage->pgno);
  FUNC4(p, iRowid, pPage->buf.p, pPage->buf.n);

  /* Initialize the next page. */
  FUNC3(&pPage->buf);
  FUNC3(&pPage->pgidx);
  FUNC2(&p->rc, &pPage->buf, 4, zero);
  pPage->iPrevPgidx = 0;
  pPage->pgno++;

  /* Increase the leaves written counter */
  pWriter->nLeafWritten++;

  /* The new leaf holds no terms or rowids */
  pWriter->bFirstTermInPage = 1;
  pWriter->bFirstRowidInPage = 1;
}