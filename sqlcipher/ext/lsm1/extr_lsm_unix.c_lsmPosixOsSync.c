
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lsm_file ;
struct TYPE_2__ {int fd; int nMap; scalar_t__ pMap; } ;
typedef TYPE_1__ PosixFile ;


 int LSM_IOERR_BKPT ;
 int LSM_OK ;
 int MS_SYNC ;
 int fdatasync (int ) ;
 int msync (scalar_t__,int ,int ) ;

__attribute__((used)) static int lsmPosixOsSync(lsm_file *pFile){
  int rc = LSM_OK;


  PosixFile *p = (PosixFile *)pFile;
  int prc = 0;

  if( p->pMap ){
    prc = msync(p->pMap, p->nMap, MS_SYNC);
  }
  if( prc==0 ) prc = fdatasync(p->fd);
  if( prc<0 ) rc = LSM_IOERR_BKPT;




  return rc;
}
