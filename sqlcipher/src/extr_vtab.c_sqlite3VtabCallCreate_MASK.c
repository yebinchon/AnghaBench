#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  aModule; TYPE_1__* aDb; } ;
typedef  TYPE_3__ sqlite3 ;
struct TYPE_21__ {char** azModuleArg; int /*<<< orphan*/  pVTable; } ;
typedef  TYPE_4__ Table ;
struct TYPE_22__ {TYPE_2__* pModule; } ;
struct TYPE_19__ {scalar_t__ xCreate; scalar_t__ xDestroy; } ;
struct TYPE_18__ {int /*<<< orphan*/  zDbSName; } ;
typedef  TYPE_5__ Module ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (TYPE_3__*) ; 
 TYPE_4__* FUNC5 (TYPE_3__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_4__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC8 (TYPE_3__*,char*,char const*) ; 
 int FUNC9 (TYPE_3__*,TYPE_4__*,TYPE_5__*,scalar_t__,char**) ; 

int FUNC10(sqlite3 *db, int iDb, const char *zTab, char **pzErr){
  int rc = SQLITE_OK;
  Table *pTab;
  Module *pMod;
  const char *zMod;

  pTab = FUNC5(db, zTab, db->aDb[iDb].zDbSName);
  FUNC3( pTab && FUNC1(pTab) && !pTab->pVTable );

  /* Locate the required virtual table module */
  zMod = pTab->azModuleArg[0];
  pMod = (Module*)FUNC7(&db->aModule, zMod);

  /* If the module has been registered and includes a Create method, 
  ** invoke it now. If the module has not been registered, return an 
  ** error. Otherwise, do nothing.
  */
  if( pMod==0 || pMod->pModule->xCreate==0 || pMod->pModule->xDestroy==0 ){
    *pzErr = FUNC8(db, "no such module: %s", zMod);
    rc = SQLITE_ERROR;
  }else{
    rc = FUNC9(db, pTab, pMod, pMod->pModule->xCreate, pzErr);
  }

  /* Justification of ALWAYS():  The xConstructor method is required to
  ** create a valid sqlite3_vtab if it returns SQLITE_OK. */
  if( rc==SQLITE_OK && FUNC0(FUNC6(db, pTab)) ){
    rc = FUNC4(db);
    if( rc==SQLITE_OK ){
      FUNC2(db, FUNC6(db, pTab));
    }
  }

  return rc;
}