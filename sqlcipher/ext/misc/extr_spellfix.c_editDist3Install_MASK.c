#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  EditDist3Config ;

/* Variables and functions */
 int SQLITE_DETERMINISTIC ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int SQLITE_UTF8 ; 
 int /*<<< orphan*/  editDist3ConfigDelete ; 
 int /*<<< orphan*/  editDist3SqlFunc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(sqlite3 *db){
  int rc;
  EditDist3Config *pConfig = FUNC3( sizeof(*pConfig) );
  if( pConfig==0 ) return SQLITE_NOMEM;
  FUNC0(pConfig, 0, sizeof(*pConfig));
  rc = FUNC1(db, "editdist3",
              2, SQLITE_UTF8|SQLITE_DETERMINISTIC, pConfig,
              editDist3SqlFunc, 0, 0, 0);
  if( rc==SQLITE_OK ){
    rc = FUNC1(db, "editdist3",
                3, SQLITE_UTF8|SQLITE_DETERMINISTIC, pConfig,
                editDist3SqlFunc, 0, 0, 0);
  }
  if( rc==SQLITE_OK ){
    rc = FUNC1(db, "editdist3",
                1, SQLITE_UTF8|SQLITE_DETERMINISTIC, pConfig,
                editDist3SqlFunc, 0, 0, editDist3ConfigDelete);
  }else{
    FUNC2(pConfig);
  }
  return rc;
}