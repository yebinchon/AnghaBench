#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ sqlite3_uint64 ;
typedef  int /*<<< orphan*/  sqlite3_file ;
struct TYPE_5__ {int /*<<< orphan*/  pLog; TYPE_3__* pReal; } ;
typedef  TYPE_2__ VLogFile ;
struct TYPE_6__ {TYPE_1__* pMethods; } ;
struct TYPE_4__ {int (* xClose ) (TYPE_3__*) ;} ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  VLOG_OP_CLOSE ; 
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static int FUNC4(sqlite3_file *pFile)
{
    sqlite3_uint64 tStart, tElapse;
    int rc = SQLITE_OK;
    VLogFile *p = (VLogFile *) pFile;

    tStart = FUNC3();
    if (p->pReal->pMethods) {
        rc = p->pReal->pMethods->xClose(p->pReal);
    }
    tElapse = FUNC3() - tStart;
    FUNC2(p->pLog, tStart, tElapse, VLOG_OP_CLOSE, -1, -1, 0, rc);
    FUNC1(p->pLog);
    return rc;
}