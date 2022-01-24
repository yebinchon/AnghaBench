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
typedef  int /*<<< orphan*/  Vdbe ;
typedef  int /*<<< orphan*/  Token ;
struct TYPE_5__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ Parse ;

/* Variables and functions */
 int /*<<< orphan*/  OP_Savepoint ; 
 int /*<<< orphan*/  P4_DYNAMIC ; 
 int /*<<< orphan*/  SAVEPOINT_BEGIN ; 
 int SAVEPOINT_RELEASE ; 
 int SAVEPOINT_ROLLBACK ; 
 int /*<<< orphan*/  SQLITE_SAVEPOINT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char const* const,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC6(Parse *pParse, int op, Token *pName){
  char *zName = FUNC4(pParse->db, pName);
  if( zName ){
    Vdbe *v = FUNC3(pParse);
#ifndef SQLITE_OMIT_AUTHORIZATION
    static const char * const az[] = { "BEGIN", "RELEASE", "ROLLBACK" };
    FUNC0( !SAVEPOINT_BEGIN && SAVEPOINT_RELEASE==1 && SAVEPOINT_ROLLBACK==2 );
#endif
    if( !v || FUNC1(pParse, SQLITE_SAVEPOINT, az[op], zName, 0) ){
      FUNC2(pParse->db, zName);
      return;
    }
    FUNC5(v, OP_Savepoint, op, 0, 0, zName, P4_DYNAMIC);
  }
}