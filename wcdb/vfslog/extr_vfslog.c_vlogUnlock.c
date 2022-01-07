
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_uint64 ;
typedef int sqlite3_file ;
struct TYPE_5__ {TYPE_3__* pReal; int pLog; } ;
typedef TYPE_2__ VLogFile ;
struct TYPE_6__ {TYPE_1__* pMethods; } ;
struct TYPE_4__ {int (* xUnlock ) (TYPE_3__*,int) ;} ;


 int VLOG_OP_UNLOCK ;
 int stub1 (TYPE_3__*,int) ;
 int vlogLogPrint (int ,int ,int ,int ,int,int,int ,int ) ;
 int vlog_time () ;

__attribute__((used)) static int vlogUnlock(sqlite3_file *pFile, int eLock)
{
    int rc;
    sqlite3_uint64 tStart;
    VLogFile *p = (VLogFile *) pFile;
    tStart = vlog_time();
    vlogLogPrint(p->pLog, tStart, 0, VLOG_OP_UNLOCK, eLock, -1, 0, 0);
    rc = p->pReal->pMethods->xUnlock(p->pReal, eLock);
    return rc;
}
