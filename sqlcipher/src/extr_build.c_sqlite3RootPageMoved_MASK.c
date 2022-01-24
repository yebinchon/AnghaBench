#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_5__* aDb; } ;
typedef  TYPE_2__ sqlite3 ;
struct TYPE_10__ {int tnum; } ;
typedef  TYPE_3__ Table ;
struct TYPE_12__ {TYPE_1__* pSchema; } ;
struct TYPE_11__ {int tnum; } ;
struct TYPE_8__ {int /*<<< orphan*/  idxHash; int /*<<< orphan*/  tblHash; } ;
typedef  TYPE_4__ Index ;
typedef  int /*<<< orphan*/  HashElem ;
typedef  int /*<<< orphan*/  Hash ;
typedef  TYPE_5__ Db ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(sqlite3 *db, int iDb, int iFrom, int iTo){
  HashElem *pElem;
  Hash *pHash;
  Db *pDb;

  FUNC0( FUNC1(db, iDb, 0) );
  pDb = &db->aDb[iDb];
  pHash = &pDb->pSchema->tblHash;
  for(pElem=FUNC3(pHash); pElem; pElem=FUNC4(pElem)){
    Table *pTab = FUNC2(pElem);
    if( pTab->tnum==iFrom ){
      pTab->tnum = iTo;
    }
  }
  pHash = &pDb->pSchema->idxHash;
  for(pElem=FUNC3(pHash); pElem; pElem=FUNC4(pElem)){
    Index *pIdx = FUNC2(pElem);
    if( pIdx->tnum==iFrom ){
      pIdx->tnum = iTo;
    }
  }
}