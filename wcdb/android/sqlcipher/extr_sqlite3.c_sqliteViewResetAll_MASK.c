#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_2__* aDb; } ;
typedef  TYPE_3__ sqlite3 ;
struct TYPE_15__ {scalar_t__ nCol; scalar_t__ aCol; scalar_t__ pSelect; } ;
typedef  TYPE_4__ Table ;
struct TYPE_13__ {TYPE_1__* pSchema; } ;
struct TYPE_12__ {int /*<<< orphan*/  tblHash; } ;
typedef  int /*<<< orphan*/  HashElem ;

/* Variables and functions */
 int /*<<< orphan*/  DB_UnresetViews ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(sqlite3 *db, int idx){
  HashElem *i;
  FUNC2( FUNC4(db, idx, 0) );
  if( !FUNC1(db, idx, DB_UnresetViews) ) return;
  for(i=FUNC6(&db->aDb[idx].pSchema->tblHash); i;i=FUNC7(i)){
    Table *pTab = FUNC5(i);
    if( pTab->pSelect ){
      FUNC3(db, pTab);
      pTab->aCol = 0;
      pTab->nCol = 0;
    }
  }
  FUNC0(db, idx, DB_UnresetViews);
}