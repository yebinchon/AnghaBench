
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lsm_file ;
struct TYPE_3__ {scalar_t__ shmfd; int nShm; int pEnv; scalar_t__* apShm; } ;
typedef TYPE_1__ PosixFile ;


 int LSM_OK ;
 int LSM_SHM_CHUNK_SIZE ;
 int close (scalar_t__) ;
 int lsmFree (int ,char*) ;
 int munmap (scalar_t__,int ) ;
 char* posixShmFile (TYPE_1__*) ;
 int unlink (char*) ;

__attribute__((used)) static int lsmPosixOsShmUnmap(lsm_file *pFile, int bDelete){
  PosixFile *p = (PosixFile *)pFile;
  if( p->shmfd>0 ){
    int i;
    for(i=0; i<p->nShm; i++){
      if( p->apShm[i] ){
        munmap(p->apShm[i], LSM_SHM_CHUNK_SIZE);
        p->apShm[i] = 0;
      }
    }
    close(p->shmfd);
    p->shmfd = 0;
    if( bDelete ){
      char *zShm = posixShmFile(p);
      if( zShm ) unlink(zShm);
      lsmFree(p->pEnv, zShm);
    }
  }
  return LSM_OK;
}
