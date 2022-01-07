
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void u8 ;
struct stat {int st_ino; int st_dev; } ;
typedef int lsm_file ;
typedef int buf ;
struct TYPE_2__ {int fd; } ;
typedef TYPE_1__ PosixFile ;


 int LSM_IOERR_BKPT ;
 int LSM_OK ;
 int fstat (int ,struct stat*) ;
 int memcpy (void*,int *,int) ;
 int memset (struct stat*,int ,int) ;

__attribute__((used)) static int lsmPosixOsFileid(
  lsm_file *pFile,
  void *pBuf,
  int *pnBuf
){
  int prc;
  int nBuf;
  int nReq;
  PosixFile *p = (PosixFile *)pFile;
  struct stat buf;

  nBuf = *pnBuf;
  nReq = (sizeof(buf.st_dev) + sizeof(buf.st_ino));
  *pnBuf = nReq;
  if( nReq>nBuf ) return LSM_OK;

  memset(&buf, 0, sizeof(buf));
  prc = fstat(p->fd, &buf);
  if( prc!=0 ) return LSM_IOERR_BKPT;

  memcpy(pBuf, &buf.st_dev, sizeof(buf.st_dev));
  memcpy(&(((u8 *)pBuf)[sizeof(buf.st_dev)]), &buf.st_ino, sizeof(buf.st_ino));
  return LSM_OK;
}
