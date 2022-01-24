#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* pMethods; } ;
typedef  TYPE_2__ sqlite3_file ;
struct TYPE_9__ {int /*<<< orphan*/  db; scalar_t__ bWal; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* xShmLock ) (TYPE_2__*,int,int,int) ;} ;
typedef  TYPE_3__ Superlock ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_FCNTL_FILE_POINTER ; 
 int SQLITE_OK ; 
 int SQLITE_SHM_EXCLUSIVE ; 
 int SQLITE_SHM_NLOCK ; 
 int SQLITE_SHM_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int,int) ; 

void FUNC5(void *pLock){
  Superlock *p = (Superlock *)pLock;
  if( p->bWal ){
    int rc;                         /* Return code */
    int flags = SQLITE_SHM_UNLOCK | SQLITE_SHM_EXCLUSIVE;
    sqlite3_file *fd = 0;
    rc = FUNC1(p->db, "main", SQLITE_FCNTL_FILE_POINTER, (void *)&fd);
    if( rc==SQLITE_OK ){
      fd->pMethods->xShmLock(fd, 2, 1, flags);
      fd->pMethods->xShmLock(fd, 3, SQLITE_SHM_NLOCK-3, flags);
    }
  }
  FUNC0(p->db);
  FUNC2(p);
}