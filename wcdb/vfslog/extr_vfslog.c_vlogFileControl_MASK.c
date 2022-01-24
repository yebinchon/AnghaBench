#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ sqlite3_uint64 ;
typedef  int sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3_file ;
typedef  int /*<<< orphan*/  VLogStat ;
struct TYPE_6__ {int /*<<< orphan*/  pLog; TYPE_4__* pReal; } ;
typedef  TYPE_2__ VLogFile ;
struct TYPE_7__ {TYPE_1__* pMethods; } ;
struct TYPE_5__ {int (* xFileControl ) (TYPE_4__*,int,void*) ;} ;

/* Variables and functions */
 int SQLITE_FCNTL_PRAGMA ; 
 int SQLITE_FCNTL_SIZE_HINT ; 
 int SQLITE_FCNTL_TRACE ; 
 int SQLITE_FCNTL_VFSLOG_STAT ; 
 int SQLITE_FCNTL_VFSNAME ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  VLOG_OP_FILECONTROL ; 
 char* FUNC0 (char*,char*) ; 
 int FUNC1 (TYPE_4__*,int,void*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int,char const*,int) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static int FUNC5(sqlite3_file *pFile, int op, void *pArg)
{
    VLogFile *p = (VLogFile *) pFile;
    if (op == SQLITE_FCNTL_VFSLOG_STAT) {
        return FUNC2(p, (VLogStat *) pArg);
    }

    sqlite3_uint64 tStart, tElapse;
    int rc;
    tStart = FUNC4();
    rc = p->pReal->pMethods->xFileControl(p->pReal, op, pArg);
    if (op == SQLITE_FCNTL_VFSNAME && rc == SQLITE_OK) {
        *(char **) pArg = FUNC0("vlog/%z", *(char **) pArg);
    }
    tElapse = FUNC4() - tStart;
    if (op == SQLITE_FCNTL_TRACE) {
        FUNC3(p->pLog, tStart, tElapse, VLOG_OP_FILECONTROL, op, -1,
                     pArg, rc);
    } else if (op == SQLITE_FCNTL_PRAGMA) {
        const char **azArg = (const char **) pArg;
        FUNC3(p->pLog, tStart, tElapse, VLOG_OP_FILECONTROL, op, -1,
                     azArg[1], rc);
    } else if (op == SQLITE_FCNTL_SIZE_HINT) {
        sqlite3_int64 sz = *(sqlite3_int64 *) pArg;
        FUNC3(p->pLog, tStart, tElapse, VLOG_OP_FILECONTROL, op, sz, 0,
                     rc);
    } else {
        FUNC3(p->pLog, tStart, tElapse, VLOG_OP_FILECONTROL, op, -1, 0,
                     rc);
    }
    return rc;
}