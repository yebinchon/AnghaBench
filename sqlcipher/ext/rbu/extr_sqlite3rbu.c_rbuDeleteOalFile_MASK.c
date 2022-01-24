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
struct TYPE_7__ {scalar_t__ rc; scalar_t__ zErrmsg; int /*<<< orphan*/  zTarget; } ;
typedef  TYPE_1__ sqlite3rbu ;
struct TYPE_8__ {int /*<<< orphan*/  (* xDelete ) (TYPE_2__*,char*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ sqlite3_vfs ;

/* Variables and functions */
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(sqlite3rbu *p){
  char *zOal = FUNC1(p, "%s-oal", p->zTarget);
  if( zOal ){
    sqlite3_vfs *pVfs = FUNC3(0);
    FUNC0( pVfs && p->rc==SQLITE_OK && p->zErrmsg==0 );
    pVfs->xDelete(pVfs, zOal, 0);
    FUNC2(zOal);
  }
}