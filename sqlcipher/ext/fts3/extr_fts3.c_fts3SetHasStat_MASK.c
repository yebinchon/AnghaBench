#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int bHasStat; int /*<<< orphan*/  zDb; int /*<<< orphan*/  db; int /*<<< orphan*/  zName; } ;
typedef  TYPE_1__ Fts3Table ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(Fts3Table *p){
  int rc = SQLITE_OK;
  if( p->bHasStat==2 ){
    char *zTbl = FUNC1("%s_stat", p->zName);
    if( zTbl ){
      int res = FUNC2(p->db, p->zDb, zTbl, 0,0,0,0,0,0);
      FUNC0(zTbl);
      p->bHasStat = (res==SQLITE_OK);
    }else{
      rc = SQLITE_NOMEM;
    }
  }
  return rc;
}