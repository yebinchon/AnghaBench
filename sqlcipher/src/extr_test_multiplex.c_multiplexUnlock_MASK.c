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
struct TYPE_7__ {int (* xUnlock ) (TYPE_2__*,int) ;} ;

/* Variables and functions */
 int SQLITE_IOERR_UNLOCK ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC2(sqlite3_file *pConn, int lock){
  multiplexConn *p = (multiplexConn*)pConn;
  int rc;
  sqlite3_file *pSubOpen = FUNC0(p->pGroup, 0, &rc, NULL, 0);
  if( pSubOpen ){
    return pSubOpen->pMethods->xUnlock(pSubOpen, lock);
  }
  return SQLITE_IOERR_UNLOCK;
}