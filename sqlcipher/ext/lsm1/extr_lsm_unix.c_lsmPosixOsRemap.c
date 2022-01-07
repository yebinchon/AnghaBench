
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_size; } ;
typedef int off_t ;
typedef int lsm_i64 ;
typedef int lsm_file ;
typedef int buf ;
struct TYPE_2__ {int nMap; void* pMap; int fd; } ;
typedef TYPE_1__ PosixFile ;


 int LSM_IOERR_BKPT ;
 int LSM_OK ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int fstat (int ,struct stat*) ;
 int ftruncate (int ,int) ;
 int memset (struct stat*,int ,int) ;
 void* mmap (int ,int,int,int ,int ,int ) ;
 int munmap (void*,int) ;

__attribute__((used)) static int lsmPosixOsRemap(
  lsm_file *pFile,
  lsm_i64 iMin,
  void **ppOut,
  lsm_i64 *pnOut
){
  off_t iSz;
  int prc;
  PosixFile *p = (PosixFile *)pFile;
  struct stat buf;



  const int aIncrSz[] = {256*1024, 1024*1024};
  int nIncrSz = aIncrSz[iMin>(2*1024*1024)];

  if( p->pMap ){
    munmap(p->pMap, p->nMap);
    *ppOut = p->pMap = 0;
    *pnOut = p->nMap = 0;
  }

  if( iMin>=0 ){
    memset(&buf, 0, sizeof(buf));
    prc = fstat(p->fd, &buf);
    if( prc!=0 ) return LSM_IOERR_BKPT;
    iSz = buf.st_size;
    if( iSz<iMin ){
      iSz = ((iMin + nIncrSz-1) / nIncrSz) * nIncrSz;
      prc = ftruncate(p->fd, iSz);
      if( prc!=0 ) return LSM_IOERR_BKPT;
    }

    p->pMap = mmap(0, iSz, PROT_READ|PROT_WRITE, MAP_SHARED, p->fd, 0);
    p->nMap = iSz;
  }

  *ppOut = p->pMap;
  *pnOut = p->nMap;
  return LSM_OK;
}
