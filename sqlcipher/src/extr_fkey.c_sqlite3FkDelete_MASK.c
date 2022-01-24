#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ pnBytesFreed; } ;
typedef  TYPE_3__ sqlite3 ;
struct TYPE_17__ {TYPE_7__* pSchema; TYPE_5__* pFKey; } ;
typedef  TYPE_4__ Table ;
struct TYPE_19__ {int /*<<< orphan*/  fkeyHash; } ;
struct TYPE_18__ {char* zTo; int isDeferred; struct TYPE_18__* pNextFrom; int /*<<< orphan*/ * apTrigger; TYPE_2__* pPrevTo; TYPE_1__* pNextTo; } ;
struct TYPE_15__ {TYPE_1__* pNextTo; } ;
struct TYPE_14__ {char* zTo; TYPE_2__* pPrevTo; } ;
typedef  TYPE_5__ FKey ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,void*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_7__*) ; 

void FUNC6(sqlite3 *db, Table *pTab){
  FKey *pFKey;                    /* Iterator variable */
  FKey *pNext;                    /* Copy of pFKey->pNextFrom */

  FUNC1( db==0 || FUNC0(pTab)
         || FUNC5(db, 0, pTab->pSchema) );
  for(pFKey=pTab->pFKey; pFKey; pFKey=pNext){

    /* Remove the FK from the fkeyHash hash table. */
    if( !db || db->pnBytesFreed==0 ){
      if( pFKey->pPrevTo ){
        pFKey->pPrevTo->pNextTo = pFKey->pNextTo;
      }else{
        void *p = (void *)pFKey->pNextTo;
        const char *z = (p ? pFKey->pNextTo->zTo : pFKey->zTo);
        FUNC4(&pTab->pSchema->fkeyHash, z, p);
      }
      if( pFKey->pNextTo ){
        pFKey->pNextTo->pPrevTo = pFKey->pPrevTo;
      }
    }

    /* EV: R-30323-21917 Each foreign key constraint in SQLite is
    ** classified as either immediate or deferred.
    */
    FUNC1( pFKey->isDeferred==0 || pFKey->isDeferred==1 );

    /* Delete any triggers created to implement actions for this FK. */
#ifndef SQLITE_OMIT_TRIGGER
    FUNC2(db, pFKey->apTrigger[0]);
    FUNC2(db, pFKey->apTrigger[1]);
#endif

    pNext = pFKey->pNextFrom;
    FUNC3(db, pFKey);
  }
}