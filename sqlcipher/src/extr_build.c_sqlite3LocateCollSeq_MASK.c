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

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_13__ {int /*<<< orphan*/  busy; } ;
struct TYPE_14__ {TYPE_1__ init; } ;
typedef  TYPE_2__ sqlite3 ;
struct TYPE_16__ {int /*<<< orphan*/  xCmp; } ;
struct TYPE_15__ {TYPE_2__* db; } ;
typedef  TYPE_3__ Parse ;
typedef  TYPE_4__ CollSeq ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_4__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_4__*,char const*) ; 

CollSeq *FUNC3(Parse *pParse, const char *zName){
  sqlite3 *db = pParse->db;
  u8 enc = FUNC0(db);
  u8 initbusy = db->init.busy;
  CollSeq *pColl;

  pColl = FUNC1(db, enc, zName, initbusy);
  if( !initbusy && (!pColl || !pColl->xCmp) ){
    pColl = FUNC2(pParse, enc, pColl, zName);
  }

  return pColl;
}