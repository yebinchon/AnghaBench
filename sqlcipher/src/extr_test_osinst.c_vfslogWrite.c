
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ sqlite_int64 ;
typedef scalar_t__ sqlite3_uint64 ;
typedef int sqlite3_file ;
struct TYPE_5__ {int iFileId; int pVfslog; TYPE_3__* pReal; } ;
typedef TYPE_2__ VfslogFile ;
struct TYPE_6__ {TYPE_1__* pMethods; } ;
struct TYPE_4__ {int (* xWrite ) (TYPE_3__*,void const*,int,scalar_t__) ;} ;


 int OS_WRITE ;
 int stub1 (TYPE_3__*,void const*,int,scalar_t__) ;
 int vfslog_call (int ,int ,int ,scalar_t__,int,int,int) ;
 scalar_t__ vfslog_time () ;

__attribute__((used)) static int vfslogWrite(
  sqlite3_file *pFile,
  const void *z,
  int iAmt,
  sqlite_int64 iOfst
){
  int rc;
  sqlite3_uint64 t;
  VfslogFile *p = (VfslogFile *)pFile;
  t = vfslog_time();
  rc = p->pReal->pMethods->xWrite(p->pReal, z, iAmt, iOfst);
  t = vfslog_time() - t;
  vfslog_call(p->pVfslog, OS_WRITE, p->iFileId, t, rc, iAmt, (int)iOfst);
  return rc;
}
