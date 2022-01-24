#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fulltext_vtab ;
struct TYPE_5__ {scalar_t__ pData; } ;
struct TYPE_6__ {int eof; int /*<<< orphan*/  leafReader; int /*<<< orphan*/  pStmt; TYPE_1__ rootData; } ;
typedef  TYPE_2__ LeavesReader ;

/* Variables and functions */
 int SQLITE_DONE ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(fulltext_vtab *v, LeavesReader *pReader){
  FUNC0( !FUNC5(pReader) );
  FUNC4(&pReader->leafReader);

  if( FUNC1(&pReader->leafReader) ){
    int rc;
    if( pReader->rootData.pData ){
      pReader->eof = 1;
      return SQLITE_OK;
    }
    rc = FUNC8(pReader->pStmt);
    if( rc!=SQLITE_ROW ){
      pReader->eof = 1;
      return rc==SQLITE_DONE ? SQLITE_OK : rc;
    }
    FUNC2(&pReader->leafReader);
    FUNC3(FUNC6(pReader->pStmt, 0),
                   FUNC7(pReader->pStmt, 0),
                   &pReader->leafReader);
  }
  return SQLITE_OK;
}