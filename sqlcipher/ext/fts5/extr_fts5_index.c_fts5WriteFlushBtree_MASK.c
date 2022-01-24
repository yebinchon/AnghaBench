#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int i64 ;
struct TYPE_10__ {scalar_t__ rc; int /*<<< orphan*/  pIdxWriter; } ;
struct TYPE_8__ {int /*<<< orphan*/  n; scalar_t__ p; } ;
struct TYPE_9__ {scalar_t__ iBtPage; scalar_t__ nEmpty; TYPE_1__ btterm; } ;
typedef  TYPE_2__ Fts5SegWriter ;
typedef  TYPE_3__ Fts5Index ;

/* Variables and functions */
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(Fts5Index *p, Fts5SegWriter *pWriter){
  int bFlag;

  FUNC0( pWriter->iBtPage || pWriter->nEmpty==0 );
  if( pWriter->iBtPage==0 ) return;
  bFlag = FUNC1(p, pWriter);

  if( p->rc==SQLITE_OK ){
    const char *z = (pWriter->btterm.n>0?(const char*)pWriter->btterm.p:"");
    /* The following was already done in fts5WriteInit(): */
    /* sqlite3_bind_int(p->pIdxWriter, 1, pWriter->iSegid); */
    FUNC2(p->pIdxWriter, 2, z, pWriter->btterm.n, SQLITE_STATIC);
    FUNC3(p->pIdxWriter, 3, bFlag + ((i64)pWriter->iBtPage<<1));
    FUNC6(p->pIdxWriter);
    p->rc = FUNC5(p->pIdxWriter);
    FUNC4(p->pIdxWriter, 2);
  }
  pWriter->iBtPage = 0;
}