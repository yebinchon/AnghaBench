
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ eStage; } ;
typedef TYPE_2__ sqlite3rbu ;
typedef int sqlite3_file ;
struct TYPE_7__ {int openFlags; TYPE_4__* pReal; scalar_t__ bNolock; TYPE_2__* pRbu; } ;
typedef TYPE_3__ rbu_file ;
struct TYPE_8__ {TYPE_1__* pMethods; } ;
struct TYPE_5__ {int (* xLock ) (TYPE_4__*,int) ;} ;


 scalar_t__ RBU_STAGE_DONE ;
 int SQLITE_BUSY ;
 int SQLITE_LOCK_EXCLUSIVE ;
 int SQLITE_OK ;
 int SQLITE_OPEN_MAIN_DB ;
 int SQLITE_OPEN_TEMP_DB ;
 int assert (int) ;
 int stub1 (TYPE_4__*,int) ;

__attribute__((used)) static int rbuVfsLock(sqlite3_file *pFile, int eLock){
  rbu_file *p = (rbu_file*)pFile;
  sqlite3rbu *pRbu = p->pRbu;
  int rc = SQLITE_OK;

  assert( p->openFlags & (SQLITE_OPEN_MAIN_DB|SQLITE_OPEN_TEMP_DB) );
  if( eLock==SQLITE_LOCK_EXCLUSIVE
   && (p->bNolock || (pRbu && pRbu->eStage!=RBU_STAGE_DONE))
  ){


    rc = SQLITE_BUSY;
  }else{
    rc = p->pReal->pMethods->xLock(p->pReal, eLock);
  }

  return rc;
}
