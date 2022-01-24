#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int nDb; scalar_t__ nSchemaLock; TYPE_1__* aDb; int /*<<< orphan*/  mDbFlags; } ;
typedef  TYPE_2__ sqlite3 ;
struct TYPE_7__ {int /*<<< orphan*/  pSchema; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBFLAG_SchemaKnownOk ; 
 int /*<<< orphan*/  DB_ResetWanted ; 
 scalar_t__ FUNC0 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 

void FUNC5(sqlite3 *db, int iDb){
  int i;
  FUNC2( iDb<db->nDb );

  if( iDb>=0 ){
    FUNC2( FUNC4(db, iDb, 0) );
    FUNC1(db, iDb, DB_ResetWanted);
    FUNC1(db, 1, DB_ResetWanted);
    db->mDbFlags &= ~DBFLAG_SchemaKnownOk;
  }

  if( db->nSchemaLock==0 ){
    for(i=0; i<db->nDb; i++){
      if( FUNC0(db, i, DB_ResetWanted) ){
        FUNC3(db->aDb[i].pSchema);
      }
    }
  }
}