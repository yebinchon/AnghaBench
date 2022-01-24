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
struct TYPE_9__ {int /*<<< orphan*/  pGroup; } ;
typedef  TYPE_3__ multiplexConn ;
struct TYPE_7__ {int (* xShmLock ) (TYPE_2__*,int,int,int) ;} ;

/* Variables and functions */
 int SQLITE_BUSY ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,int,int,int) ; 

__attribute__((used)) static int FUNC2(
  sqlite3_file *pConn,       /* Database file holding the shared memory */
  int ofst,                  /* First lock to acquire or release */
  int n,                     /* Number of locks to acquire or release */
  int flags                  /* What to do with the lock */
){
  multiplexConn *p = (multiplexConn*)pConn;
  int rc;
  sqlite3_file *pSubOpen = FUNC0(p->pGroup, 0, &rc, NULL, 0);
  if( pSubOpen ){
    return pSubOpen->pMethods->xShmLock(pSubOpen, ofst, n, flags);
  }
  return SQLITE_BUSY;
}