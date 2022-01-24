#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ zErrMsg; TYPE_1__* pModule; } ;
typedef  TYPE_2__ sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3_index_info ;
typedef  int /*<<< orphan*/  Table ;
struct TYPE_11__ {TYPE_2__* pVtab; } ;
struct TYPE_10__ {int /*<<< orphan*/  db; } ;
struct TYPE_8__ {int (* xBestIndex ) (TYPE_2__*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_3__ Parse ;

/* Variables and functions */
 int SQLITE_CONSTRAINT ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,scalar_t__) ; 
 TYPE_6__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(Parse *pParse, Table *pTab, sqlite3_index_info *p){
  sqlite3_vtab *pVtab = FUNC4(pParse->db, pTab)->pVtab;
  int rc;

  FUNC0(p);
  rc = pVtab->pModule->xBestIndex(pVtab, p);
  FUNC1(p);

  if( rc!=SQLITE_OK && rc!=SQLITE_CONSTRAINT ){
    if( rc==SQLITE_NOMEM ){
      FUNC5(pParse->db);
    }else if( !pVtab->zErrMsg ){
      FUNC3(pParse, "%s", FUNC2(rc));
    }else{
      FUNC3(pParse, "%s", pVtab->zErrMsg);
    }
  }
  FUNC6(pVtab->zErrMsg);
  pVtab->zErrMsg = 0;
  return rc;
}