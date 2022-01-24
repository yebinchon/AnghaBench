#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ n; TYPE_2__* p; } ;
struct TYPE_15__ {int pgsz; int /*<<< orphan*/  zName; int /*<<< orphan*/  zDb; } ;
struct TYPE_14__ {scalar_t__ rc; scalar_t__ pIdxWriter; TYPE_4__* pConfig; } ;
struct TYPE_12__ {int pgno; TYPE_5__ buf; TYPE_5__ pgidx; } ;
struct TYPE_13__ {int iSegid; int bFirstTermInPage; int iBtPage; TYPE_1__ writer; } ;
typedef  TYPE_2__ Fts5SegWriter ;
typedef  TYPE_3__ Fts5Index ;
typedef  TYPE_4__ Fts5Config ;

/* Variables and functions */
 int FTS5_DATA_PADDING ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,TYPE_5__*,int const) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(
  Fts5Index *p, 
  Fts5SegWriter *pWriter, 
  int iSegid
){
  const int nBuffer = p->pConfig->pgsz + FTS5_DATA_PADDING;

  FUNC3(pWriter, 0, sizeof(Fts5SegWriter));
  pWriter->iSegid = iSegid;

  FUNC2(p, pWriter, 1);
  pWriter->writer.pgno = 1;
  pWriter->bFirstTermInPage = 1;
  pWriter->iBtPage = 1;

  FUNC0( pWriter->writer.buf.n==0 );
  FUNC0( pWriter->writer.pgidx.n==0 );

  /* Grow the two buffers to pgsz + padding bytes in size. */
  FUNC4(&p->rc, &pWriter->writer.pgidx, nBuffer);
  FUNC4(&p->rc, &pWriter->writer.buf, nBuffer);

  if( p->pIdxWriter==0 ){
    Fts5Config *pConfig = p->pConfig;
    FUNC1(p, &p->pIdxWriter, FUNC6(
          "INSERT INTO '%q'.'%q_idx'(segid,term,pgno) VALUES(?,?,?)", 
          pConfig->zDb, pConfig->zName
    ));
  }

  if( p->rc==SQLITE_OK ){
    /* Initialize the 4-byte leaf-page header to 0x00. */
    FUNC3(pWriter->writer.buf.p, 0, 4);
    pWriter->writer.buf.n = 4;

    /* Bind the current output segment id to the index-writer. This is an
    ** optimization over binding the same value over and over as rows are
    ** inserted into %_idx by the current writer.  */
    FUNC5(p->pIdxWriter, 1, pWriter->iSegid);
  }
}