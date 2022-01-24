#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  aModule; } ;
typedef  TYPE_2__ sqlite3 ;
struct TYPE_19__ {char** azModuleArg; } ;
typedef  TYPE_3__ Table ;
struct TYPE_21__ {TYPE_1__* pModule; } ;
struct TYPE_20__ {int rc; TYPE_2__* db; } ;
struct TYPE_17__ {int /*<<< orphan*/  xConnect; } ;
typedef  TYPE_4__ Parse ;
typedef  TYPE_5__ Module ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*,char const*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC6 (TYPE_2__*,TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ ,char**) ; 

int FUNC7(Parse *pParse, Table *pTab){
  sqlite3 *db = pParse->db;
  const char *zMod;
  Module *pMod;
  int rc;

  FUNC1( pTab );
  if( !FUNC0(pTab) || FUNC4(db, pTab) ){
    return SQLITE_OK;
  }

  /* Locate the required virtual table module */
  zMod = pTab->azModuleArg[0];
  pMod = (Module*)FUNC5(&db->aModule, zMod);

  if( !pMod ){
    const char *zModule = pTab->azModuleArg[0];
    FUNC3(pParse, "no such module: %s", zModule);
    rc = SQLITE_ERROR;
  }else{
    char *zErr = 0;
    rc = FUNC6(db, pTab, pMod, pMod->pModule->xConnect, &zErr);
    if( rc!=SQLITE_OK ){
      FUNC3(pParse, "%s", zErr);
      pParse->rc = rc;
    }
    FUNC2(db, zErr);
  }

  return rc;
}