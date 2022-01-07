
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int ssize_t ;
typedef scalar_t__ off_t ;
typedef scalar_t__ lsm_i64 ;
typedef int lsm_file ;
struct TYPE_2__ {int fd; } ;
typedef TYPE_1__ PosixFile ;


 int LSM_IOERR_BKPT ;
 int LSM_OK ;
 int SEEK_SET ;
 scalar_t__ lseek (int ,scalar_t__,int ) ;
 int memset (int *,int ,int) ;
 int read (int ,void*,size_t) ;

__attribute__((used)) static int lsmPosixOsRead(
  lsm_file *pFile,
  lsm_i64 iOff,
  void *pData,
  int nData
){
  int rc = LSM_OK;
  PosixFile *p = (PosixFile *)pFile;
  off_t offset;

  offset = lseek(p->fd, (off_t)iOff, SEEK_SET);
  if( offset!=iOff ){
    rc = LSM_IOERR_BKPT;
  }else{
    ssize_t prc = read(p->fd, pData, (size_t)nData);
    if( prc<0 ){
      rc = LSM_IOERR_BKPT;
    }else if( prc<nData ){
      memset(&((u8 *)pData)[prc], 0, nData - prc);
    }

  }

  return rc;
}
