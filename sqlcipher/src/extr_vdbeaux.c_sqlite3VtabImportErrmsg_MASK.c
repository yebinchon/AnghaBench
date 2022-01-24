#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ zErrMsg; } ;
typedef  TYPE_1__ sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_6__ {int /*<<< orphan*/  zErrMsg; int /*<<< orphan*/ * db; } ;
typedef  TYPE_2__ Vdbe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(Vdbe *p, sqlite3_vtab *pVtab){
  if( pVtab->zErrMsg ){
    sqlite3 *db = p->db;
    FUNC0(db, p->zErrMsg);
    p->zErrMsg = FUNC1(db, pVtab->zErrMsg);
    FUNC2(pVtab->zErrMsg);
    pVtab->zErrMsg = 0;
  }
}