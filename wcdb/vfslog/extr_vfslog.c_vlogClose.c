
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
struct TYPE_4__ {int (* xClose ) (TYPE_3__*) ;} ;


 int SQLITE_OK ;
 int VLOG_OP_CLOSE ;
 int stub1 (TYPE_3__*) ;
 int vlogLogClose (int ) ;
 int vlogLogPrint (int ,scalar_t__,scalar_t__,int ,int,int,int ,int) ;
 scalar_t__ vlog_time () ;

__attribute__((used)) static int vlogClose(sqlite3_file *pFile)
{
    sqlite3_uint64 tStart, tElapse;
    int rc = SQLITE_OK;
    VLogFile *p = (VLogFile *) pFile;

    tStart = vlog_time();
    if (p->pReal->pMethods) {
        rc = p->pReal->pMethods->xClose(p->pReal);
    }
    tElapse = vlog_time() - tStart;
    vlogLogPrint(p->pLog, tStart, tElapse, VLOG_OP_CLOSE, -1, -1, 0, rc);
    vlogLogClose(p->pLog);
    return rc;
}
