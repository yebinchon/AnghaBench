#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int nDb; scalar_t__ nSchemaLock; int mDbFlags; TYPE_2__* aDb; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_10__ {scalar_t__ pSchema; } ;
typedef  TYPE_2__ Db ;

/* Variables and functions */
 int DBFLAG_SchemaChange ; 
 int DBFLAG_SchemaKnownOk ; 
 int /*<<< orphan*/  DB_ResetWanted ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(sqlite3 *db){
  int i;
  FUNC1(db);
  for(i=0; i<db->nDb; i++){
    Db *pDb = &db->aDb[i];
    if( pDb->pSchema ){
      if( db->nSchemaLock==0 ){
        FUNC4(pDb->pSchema);
      }else{
        FUNC0(db, i, DB_ResetWanted);
      }
    }
  }
  db->mDbFlags &= ~(DBFLAG_SchemaChange|DBFLAG_SchemaKnownOk);
  FUNC5(db);
  FUNC2(db);
  if( db->nSchemaLock==0 ){
    FUNC3(db);
  }
}