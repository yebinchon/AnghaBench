
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3_file ;
struct TYPE_8__ {int openFlags; TYPE_4__* pReal; TYPE_2__* pRbu; } ;
typedef TYPE_3__ rbu_file ;
struct TYPE_9__ {TYPE_1__* pMethods; } ;
struct TYPE_7__ {int eStage; } ;
struct TYPE_6__ {int (* xShmUnmap ) (TYPE_4__*,int) ;} ;


 int RBU_STAGE_MOVE ;
 int RBU_STAGE_OAL ;
 int SQLITE_OK ;
 int SQLITE_OPEN_MAIN_DB ;
 int SQLITE_OPEN_TEMP_DB ;
 int assert (int) ;
 int rbuUnlockShm (TYPE_3__*) ;
 int stub1 (TYPE_4__*,int) ;

__attribute__((used)) static int rbuVfsShmUnmap(sqlite3_file *pFile, int delFlag){
  rbu_file *p = (rbu_file*)pFile;
  int rc = SQLITE_OK;
  int eStage = (p->pRbu ? p->pRbu->eStage : 0);

  assert( p->openFlags & (SQLITE_OPEN_MAIN_DB|SQLITE_OPEN_TEMP_DB) );
  if( eStage==RBU_STAGE_OAL || eStage==RBU_STAGE_MOVE ){

  }else{

    rbuUnlockShm(p);
    rc = p->pReal->pMethods->xShmUnmap(p->pReal, delFlag);
  }
  return rc;
}
