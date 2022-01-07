
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lsm_file ;
typedef int lsm_env ;
struct TYPE_5__ {char const* zName; int fd; int * pEnv; } ;
typedef TYPE_1__ PosixFile ;


 scalar_t__ ENOENT ;
 int LSM_IOERR_BKPT ;
 int LSM_IOERR_NOENT ;
 int LSM_NOMEM ;
 int LSM_OK ;
 int LSM_OPEN_READONLY ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_RDWR ;
 scalar_t__ errno ;
 int lsmErrorBkpt (int ) ;
 int lsm_free (int *,TYPE_1__*) ;
 TYPE_1__* lsm_malloc (int *,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int open (char const*,int,int) ;

__attribute__((used)) static int lsmPosixOsOpen(
  lsm_env *pEnv,
  const char *zFile,
  int flags,
  lsm_file **ppFile
){
  int rc = LSM_OK;
  PosixFile *p;

  p = lsm_malloc(pEnv, sizeof(PosixFile));
  if( p==0 ){
    rc = LSM_NOMEM;
  }else{
    int bReadonly = (flags & LSM_OPEN_READONLY);
    int oflags = (bReadonly ? O_RDONLY : (O_RDWR|O_CREAT));
    memset(p, 0, sizeof(PosixFile));
    p->zName = zFile;
    p->pEnv = pEnv;
    p->fd = open(zFile, oflags, 0644);
    if( p->fd<0 ){
      lsm_free(pEnv, p);
      p = 0;
      if( errno==ENOENT ){
        rc = lsmErrorBkpt(LSM_IOERR_NOENT);
      }else{
        rc = LSM_IOERR_BKPT;
      }
    }
  }

  *ppFile = (lsm_file *)p;
  return rc;
}
