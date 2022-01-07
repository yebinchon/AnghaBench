
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


 int F_GETLK ;

 short F_UNLCK ;

 int LSM_BUSY ;
 int LSM_IOERR_BKPT ;
 int LSM_LOCK_EXCL ;
 int LSM_LOCK_SHARED ;
 int LSM_OK ;
 int SEEK_SET ;
 int array_size (short const*) ;
 int assert (int) ;
 scalar_t__ fcntl (int ,int ,struct flock*) ;
 int memset (struct flock*,int ,int) ;

__attribute__((used)) static int lsmPosixOsTestLock(lsm_file *pFile, int iLock, int nLock, int eType){
  int rc = LSM_OK;
  PosixFile *p = (PosixFile *)pFile;
  static const short aType[3] = { 0, 129, 128 };
  struct flock lock;

  assert( eType==LSM_LOCK_SHARED || eType==LSM_LOCK_EXCL );
  assert( aType[LSM_LOCK_SHARED]==129 );
  assert( aType[LSM_LOCK_EXCL]==128 );
  assert( eType>=0 && eType<array_size(aType) );
  assert( iLock>0 && iLock<=32 );

  memset(&lock, 0, sizeof(lock));
  lock.l_whence = SEEK_SET;
  lock.l_len = nLock;
  lock.l_type = aType[eType];
  lock.l_start = (4096-iLock-nLock+1);

  if( fcntl(p->fd, F_GETLK, &lock) ){
    rc = LSM_IOERR_BKPT;
  }else if( lock.l_type!=F_UNLCK ){
    rc = LSM_BUSY;
  }

  return rc;
}
