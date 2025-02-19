
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {scalar_t__ st_size; } ;
typedef scalar_t__ off_t ;
typedef int lsm_file ;
struct TYPE_3__ {int nShm; scalar_t__ shmfd; void** apShm; int pEnv; } ;
typedef TYPE_1__ PosixFile ;


 int LSM_IOERR_BKPT ;
 int LSM_NOMEM_BKPT ;
 int LSM_OK ;
 int LSM_SHM_CHUNK_SIZE ;
 int MAP_SHARED ;
 int O_CREAT ;
 int O_RDWR ;
 int PROT_READ ;
 int PROT_WRITE ;
 int assert (int) ;
 scalar_t__ fstat (scalar_t__,struct stat*) ;
 scalar_t__ ftruncate (scalar_t__,scalar_t__) ;
 int lsmFree (int ,char*) ;
 scalar_t__ lsmRealloc (int ,void**,int) ;
 void* mmap (int ,int,int,int ,scalar_t__,int) ;
 scalar_t__ open (char*,int,int) ;
 char* posixShmFile (TYPE_1__*) ;

__attribute__((used)) static int lsmPosixOsShmMap(lsm_file *pFile, int iChunk, int sz, void **ppShm){
  PosixFile *p = (PosixFile *)pFile;

  *ppShm = 0;
  assert( sz==LSM_SHM_CHUNK_SIZE );
  if( iChunk>=p->nShm ){
    int i;
    void **apNew;
    int nNew = iChunk+1;
    off_t nReq = nNew * LSM_SHM_CHUNK_SIZE;
    struct stat sStat;


    if( p->shmfd<=0 ){
      char *zShm = posixShmFile(p);
      if( !zShm ) return LSM_NOMEM_BKPT;
      p->shmfd = open(zShm, O_RDWR|O_CREAT, 0644);
      lsmFree(p->pEnv, zShm);
      if( p->shmfd<0 ){
        return LSM_IOERR_BKPT;
      }
    }



    if( fstat(p->shmfd, &sStat) ){
      return LSM_IOERR_BKPT;
    }
    if( sStat.st_size<nReq ){
      if( ftruncate(p->shmfd, nReq) ){
        return LSM_IOERR_BKPT;
      }
    }

    apNew = (void **)lsmRealloc(p->pEnv, p->apShm, sizeof(void *) * nNew);
    if( !apNew ) return LSM_NOMEM_BKPT;
    for(i=p->nShm; i<nNew; i++){
      apNew[i] = 0;
    }
    p->apShm = apNew;
    p->nShm = nNew;
  }

  if( p->apShm[iChunk]==0 ){
    p->apShm[iChunk] = mmap(0, LSM_SHM_CHUNK_SIZE,
        PROT_READ|PROT_WRITE, MAP_SHARED, p->shmfd, iChunk*LSM_SHM_CHUNK_SIZE
    );
    if( p->apShm[iChunk]==0 ) return LSM_IOERR_BKPT;
  }

  *ppShm = p->apShm[iChunk];
  return LSM_OK;
}
