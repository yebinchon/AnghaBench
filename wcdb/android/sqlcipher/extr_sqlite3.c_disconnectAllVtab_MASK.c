#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int nDb; int /*<<< orphan*/  aModule; TYPE_1__* aDb; } ;
typedef  TYPE_2__ sqlite3 ;
typedef  int /*<<< orphan*/  Table ;
struct TYPE_14__ {int /*<<< orphan*/ * pEpoTab; } ;
struct TYPE_13__ {int /*<<< orphan*/  tblHash; } ;
struct TYPE_11__ {TYPE_3__* pSchema; } ;
typedef  TYPE_3__ Schema ;
typedef  TYPE_4__ Module ;
typedef  int /*<<< orphan*/  HashElem ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(sqlite3 *db){
#ifndef SQLITE_OMIT_VIRTUALTABLE
  int i;
  HashElem *p;
  FUNC2(db);
  for(i=0; i<db->nDb; i++){
    Schema *pSchema = db->aDb[i].pSchema;
    if( pSchema ){
      for(p=FUNC7(&pSchema->tblHash); p; p=FUNC8(p)){
        Table *pTab = (Table *)FUNC6(p);
        if( FUNC0(pTab) ) FUNC4(db, pTab);
      }
    }
  }
  for(p=FUNC7(&db->aModule); p; p=FUNC8(p)){
    Module *pMod = (Module *)FUNC6(p);
    if( pMod->pEpoTab ){
      FUNC4(db, pMod->pEpoTab);
    }
  }
  FUNC5(db);
  FUNC3(db);
#else
  UNUSED_PARAMETER(db);
#endif
}