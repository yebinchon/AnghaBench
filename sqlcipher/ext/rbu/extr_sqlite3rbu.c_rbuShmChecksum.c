
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {scalar_t__ rc; TYPE_2__* pTargetFd; } ;
typedef TYPE_3__ sqlite3rbu ;
struct TYPE_10__ {TYPE_1__* pMethods; } ;
typedef TYPE_4__ sqlite3_file ;
typedef int i64 ;
struct TYPE_8__ {TYPE_4__* pReal; } ;
struct TYPE_7__ {scalar_t__ (* xShmMap ) (TYPE_4__*,int ,int,int ,void volatile**) ;} ;


 scalar_t__ SQLITE_OK ;
 scalar_t__ stub1 (TYPE_4__*,int ,int,int ,void volatile**) ;

__attribute__((used)) static i64 rbuShmChecksum(sqlite3rbu *p){
  i64 iRet = 0;
  if( p->rc==SQLITE_OK ){
    sqlite3_file *pDb = p->pTargetFd->pReal;
    u32 volatile *ptr;
    p->rc = pDb->pMethods->xShmMap(pDb, 0, 32*1024, 0, (void volatile**)&ptr);
    if( p->rc==SQLITE_OK ){
      iRet = ((i64)ptr[10] << 32) + ptr[11];
    }
  }
  return iRet;
}
