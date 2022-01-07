
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct flock {int l_len; short l_type; int l_start; int l_whence; } ;
typedef int lsm_file ;
typedef int lock ;
struct TYPE_2__ {int fd; } ;
typedef TYPE_1__ PosixFile ;


 int EACCES ;
 int EAGAIN ;

 int F_SETLK ;


 int LSM_BUSY ;
 int LSM_IOERR_BKPT ;
 size_t LSM_LOCK_EXCL ;
 size_t LSM_LOCK_SHARED ;
 size_t LSM_LOCK_UNLOCK ;
 int LSM_OK ;
 int SEEK_SET ;
 int array_size (short const*) ;
 int assert (int) ;
 int errno ;
 scalar_t__ fcntl (int ,int ,struct flock*) ;
 int memset (struct flock*,int ,int) ;

__attribute__((used)) static int lsmPosixOsLock(lsm_file *pFile, int iLock, int eType){
  int rc = LSM_OK;
  PosixFile *p = (PosixFile *)pFile;
  static const short aType[3] = { 129, 130, 128 };
  struct flock lock;

  assert( aType[LSM_LOCK_UNLOCK]==129 );
  assert( aType[LSM_LOCK_SHARED]==130 );
  assert( aType[LSM_LOCK_EXCL]==128 );
  assert( eType>=0 && eType<array_size(aType) );
  assert( iLock>0 && iLock<=32 );

  memset(&lock, 0, sizeof(lock));
  lock.l_whence = SEEK_SET;
  lock.l_len = 1;
  lock.l_type = aType[eType];
  lock.l_start = (4096-iLock);

  if( fcntl(p->fd, F_SETLK, &lock) ){
    int e = errno;
    if( e==EACCES || e==EAGAIN ){
      rc = LSM_BUSY;
    }else{
      rc = LSM_IOERR_BKPT;
    }
  }

  return rc;
}
