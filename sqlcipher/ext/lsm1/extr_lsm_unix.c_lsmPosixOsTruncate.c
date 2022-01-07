
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {scalar_t__ st_size; } ;
typedef int off_t ;
typedef scalar_t__ lsm_i64 ;
typedef int lsm_file ;
struct TYPE_2__ {int fd; } ;
typedef TYPE_1__ PosixFile ;


 int LSM_IOERR_BKPT ;
 int LSM_OK ;
 int fstat (int ,struct stat*) ;
 int ftruncate (int ,int ) ;

__attribute__((used)) static int lsmPosixOsTruncate(
  lsm_file *pFile,
  lsm_i64 nSize
){
  PosixFile *p = (PosixFile *)pFile;
  int rc = LSM_OK;
  int prc;
  struct stat sStat;

  prc = fstat(p->fd, &sStat);
  if( prc==0 && sStat.st_size>nSize ){
    prc = ftruncate(p->fd, (off_t)nSize);
  }
  if( prc<0 ) rc = LSM_IOERR_BKPT;

  return rc;
}
