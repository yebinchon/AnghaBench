
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ sqlite3_uint64 ;
typedef int sqlite3_file ;
struct TYPE_5__ {int pLog; TYPE_3__* pReal; } ;
typedef TYPE_2__ VLogFile ;
struct TYPE_6__ {TYPE_1__* pMethods; } ;
struct TYPE_4__ {int (* xCheckReservedLock ) (TYPE_3__*,int*) ;} ;


 int VLOG_OP_CHECKRESERVEDLOCK ;
 int stub1 (TYPE_3__*,int*) ;
 int vlogLogPrint (int ,scalar_t__,scalar_t__,int ,int,int,char*,int) ;
 scalar_t__ vlog_time () ;

__attribute__((used)) static int vlogCheckReservedLock(sqlite3_file *pFile, int *pResOut)
{
    int rc;
    sqlite3_uint64 tStart, tElapse;
    VLogFile *p = (VLogFile *) pFile;
    tStart = vlog_time();
    rc = p->pReal->pMethods->xCheckReservedLock(p->pReal, pResOut);
    tElapse = vlog_time() - tStart;
    vlogLogPrint(p->pLog, tStart, tElapse, VLOG_OP_CHECKRESERVEDLOCK, *pResOut,
                 -1, "", rc);
    return rc;
}
