
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned int iUsrVersion; } ;
struct TYPE_8__ {scalar_t__ nTransOpen; TYPE_1__ treehdr; } ;
typedef TYPE_2__ lsm_db ;


 int LSM_OK ;
 int lsm_begin (TYPE_2__*,int) ;
 int lsm_commit (TYPE_2__*,int ) ;
 int lsm_rollback (TYPE_2__*,int ) ;

int lsm_set_user_version(lsm_db *pDb, unsigned int iUsr){
  int rc = LSM_OK;
  int bCommit = 0;

  if( pDb->nTransOpen==0 ){
    bCommit = 1;
    rc = lsm_begin(pDb, 1);
  }

  if( rc==LSM_OK ){
    pDb->treehdr.iUsrVersion = iUsr;
  }



  if( bCommit ){
    if( rc==LSM_OK ){
      rc = lsm_commit(pDb, 0);
    }else{
      lsm_rollback(pDb, 0);
    }
  }

  return rc;
}
