
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int pgsz; int aBuf; int rc; TYPE_2__* pTargetFd; } ;
typedef TYPE_4__ sqlite3rbu ;
struct TYPE_15__ {TYPE_3__* pMethods; } ;
typedef TYPE_5__ sqlite3_file ;
typedef int i64 ;
struct TYPE_16__ {int iWalFrame; int iDbPage; } ;
struct TYPE_13__ {int (* xWrite ) (TYPE_5__*,int ,int,int) ;int (* xRead ) (TYPE_5__*,int ,int,int) ;} ;
struct TYPE_12__ {TYPE_5__* pReal; TYPE_1__* pWalFd; } ;
struct TYPE_11__ {TYPE_5__* pReal; } ;
typedef TYPE_6__ RbuFrame ;


 int SQLITE_OK ;
 int assert (int) ;
 int stub1 (TYPE_5__*,int ,int,int) ;
 int stub2 (TYPE_5__*,int ,int,int) ;

__attribute__((used)) static void rbuCheckpointFrame(sqlite3rbu *p, RbuFrame *pFrame){
  sqlite3_file *pWal = p->pTargetFd->pWalFd->pReal;
  sqlite3_file *pDb = p->pTargetFd->pReal;
  i64 iOff;

  assert( p->rc==SQLITE_OK );
  iOff = (i64)(pFrame->iWalFrame-1) * (p->pgsz + 24) + 32 + 24;
  p->rc = pWal->pMethods->xRead(pWal, p->aBuf, p->pgsz, iOff);
  if( p->rc ) return;

  iOff = (i64)(pFrame->iDbPage-1) * p->pgsz;
  p->rc = pDb->pMethods->xWrite(pDb, p->aBuf, p->pgsz, iOff);
}
