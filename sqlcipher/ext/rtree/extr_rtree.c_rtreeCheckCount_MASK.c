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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  scalar_t__ i64 ;
struct TYPE_5__ {scalar_t__ rc; int /*<<< orphan*/  zTab; int /*<<< orphan*/  zDb; } ;
typedef  TYPE_1__ RtreeCheck ;

/* Variables and functions */
 scalar_t__ SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char const*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(RtreeCheck *pCheck, const char *zTbl, i64 nExpect){
  if( pCheck->rc==SQLITE_OK ){
    sqlite3_stmt *pCount;
    pCount = FUNC1(pCheck, "SELECT count(*) FROM %Q.'%q%s'",
        pCheck->zDb, pCheck->zTab, zTbl
    );
    if( pCount ){
      if( FUNC4(pCount)==SQLITE_ROW ){
        i64 nActual = FUNC2(pCount, 0);
        if( nActual!=nExpect ){
          FUNC0(pCheck, "Wrong number of entries in %%%s table"
              " - expected %lld, actual %lld" , zTbl, nExpect, nActual
          );
        }
      }
      pCheck->rc = FUNC3(pCount);
    }
  }
}