#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  Tcl_Obj ;
typedef  int /*<<< orphan*/  Tcl_Interp ;
struct TYPE_7__ {scalar_t__ pWalHook; scalar_t__ pRollbackHook; scalar_t__ pUpdateHook; scalar_t__ pPreUpdateHook; int /*<<< orphan*/ * db; } ;
typedef  TYPE_1__ SqliteDb ;

/* Variables and functions */
 int /*<<< orphan*/  DbPreUpdateHandler ; 
 int /*<<< orphan*/  DbRollbackHandler ; 
 int /*<<< orphan*/  DbUpdateHandler ; 
 int /*<<< orphan*/  DbWalHandler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void FUNC9(
  Tcl_Interp *interp,             /* Tcl interpreter */
  SqliteDb *pDb,                  /* Database handle */
  Tcl_Obj *pArg,                  /* SCRIPT argument (or NULL) */
  Tcl_Obj **ppHook                /* Pointer to member of SqliteDb */
){
  sqlite3 *db = pDb->db;

  if( *ppHook ){
    FUNC3(interp, *ppHook);
    if( pArg ){
      FUNC0(*ppHook);
      *ppHook = 0;
    }
  }
  if( pArg ){
    FUNC4( !(*ppHook) );
    if( FUNC1(pArg)>0 ){
      *ppHook = pArg;
      FUNC2(*ppHook);
    }
  }

#ifdef SQLITE_ENABLE_PREUPDATE_HOOK
  sqlite3_preupdate_hook(db, (pDb->pPreUpdateHook?DbPreUpdateHandler:0), pDb);
#endif
  FUNC7(db, (pDb->pUpdateHook?DbUpdateHandler:0), pDb);
  FUNC6(db, (pDb->pRollbackHook?DbRollbackHandler:0), pDb);
  FUNC8(db, (pDb->pWalHook?DbWalHandler:0), pDb);
}