
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vfs ;
typedef scalar_t__ sqlite3_uint64 ;
typedef int VLogLog ;
struct TYPE_3__ {int (* xAccess ) (TYPE_1__*,char const*,int,int*) ;} ;


 TYPE_1__* REALVFS (int *) ;
 int VLOG_OP_ACCESS ;
 int stub1 (TYPE_1__*,char const*,int,int*) ;
 int vlogLogClose (int *) ;
 int * vlogLogOpen (char const*) ;
 int vlogLogPrint (int *,scalar_t__,scalar_t__,int ,int,int,int ,int) ;
 scalar_t__ vlog_time () ;

__attribute__((used)) static int
vlogAccess(sqlite3_vfs *pVfs, const char *zPath, int flags, int *pResOut)
{
    int rc;
    sqlite3_uint64 tStart, tElapse;
    VLogLog *pLog;
    tStart = vlog_time();
    rc = REALVFS(pVfs)->xAccess(REALVFS(pVfs), zPath, flags, pResOut);
    tElapse = vlog_time() - tStart;
    pLog = vlogLogOpen(zPath);
    vlogLogPrint(pLog, tStart, tElapse, VLOG_OP_ACCESS, flags, *pResOut, 0, rc);
    vlogLogClose(pLog);
    return rc;
}
