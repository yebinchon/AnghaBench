#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_size; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  lsm_file ;
struct TYPE_3__ {int nShm; scalar_t__ shmfd; void** apShm; int /*<<< orphan*/  pEnv; } ;
typedef  TYPE_1__ PosixFile ;

/* Variables and functions */
 int LSM_IOERR_BKPT ; 
 int LSM_NOMEM_BKPT ; 
 int LSM_OK ; 
 int LSM_SHM_CHUNK_SIZE ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__,struct stat*) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,void**,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC6 (char*,int,int) ; 
 char* FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(lsm_file *pFile, int iChunk, int sz, void **ppShm){
  PosixFile *p = (PosixFile *)pFile;

  *ppShm = 0;
  FUNC0( sz==LSM_SHM_CHUNK_SIZE );
  if( iChunk>=p->nShm ){
    int i;
    void **apNew;
    int nNew = iChunk+1;
    off_t nReq = nNew * LSM_SHM_CHUNK_SIZE;
    struct stat sStat;

    /* If the shared-memory file has not been opened, open it now. */
    if( p->shmfd<=0 ){
      char *zShm = FUNC7(p);
      if( !zShm ) return LSM_NOMEM_BKPT;
      p->shmfd = FUNC6(zShm, O_RDWR|O_CREAT, 0644);
      FUNC3(p->pEnv, zShm);
      if( p->shmfd<0 ){ 
        return LSM_IOERR_BKPT;
      }
    }

    /* If the shared-memory file is not large enough to contain the 
    ** requested chunk, cause it to grow.  */
    if( FUNC1(p->shmfd, &sStat) ){
      return LSM_IOERR_BKPT;
    }
    if( sStat.st_size<nReq ){
      if( FUNC2(p->shmfd, nReq) ){
        return LSM_IOERR_BKPT;
      }
    }

    apNew = (void **)FUNC4(p->pEnv, p->apShm, sizeof(void *) * nNew);
    if( !apNew ) return LSM_NOMEM_BKPT;
    for(i=p->nShm; i<nNew; i++){
      apNew[i] = 0;
    }
    p->apShm = apNew;
    p->nShm = nNew;
  }

  if( p->apShm[iChunk]==0 ){
    p->apShm[iChunk] = FUNC5(0, LSM_SHM_CHUNK_SIZE, 
        PROT_READ|PROT_WRITE, MAP_SHARED, p->shmfd, iChunk*LSM_SHM_CHUNK_SIZE
    );
    if( p->apShm[iChunk]==0 ) return LSM_IOERR_BKPT;
  }

  *ppShm = p->apShm[iChunk];
  return LSM_OK;
}