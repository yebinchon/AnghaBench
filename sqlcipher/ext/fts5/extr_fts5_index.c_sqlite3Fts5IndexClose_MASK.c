#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ pReader; struct TYPE_5__* zDataTbl; int /*<<< orphan*/  pHash; int /*<<< orphan*/  pDataVersion; int /*<<< orphan*/  pIdxSelect; int /*<<< orphan*/  pIdxDeleter; int /*<<< orphan*/  pIdxWriter; int /*<<< orphan*/  pDeleter; int /*<<< orphan*/  pWriter; } ;
typedef  TYPE_1__ Fts5Index ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int FUNC5(Fts5Index *p){
  int rc = SQLITE_OK;
  if( p ){
    FUNC0( p->pReader==0 );
    FUNC1(p);
    FUNC3(p->pWriter);
    FUNC3(p->pDeleter);
    FUNC3(p->pIdxWriter);
    FUNC3(p->pIdxDeleter);
    FUNC3(p->pIdxSelect);
    FUNC3(p->pDataVersion);
    FUNC2(p->pHash);
    FUNC4(p->zDataTbl);
    FUNC4(p);
  }
  return rc;
}