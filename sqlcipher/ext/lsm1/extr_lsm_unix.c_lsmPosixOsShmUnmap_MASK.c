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
typedef  int /*<<< orphan*/  lsm_file ;
struct TYPE_3__ {scalar_t__ shmfd; int nShm; int /*<<< orphan*/  pEnv; scalar_t__* apShm; } ;
typedef  TYPE_1__ PosixFile ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  LSM_SHM_CHUNK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 char* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(lsm_file *pFile, int bDelete){
  PosixFile *p = (PosixFile *)pFile;
  if( p->shmfd>0 ){
    int i;
    for(i=0; i<p->nShm; i++){
      if( p->apShm[i] ){
        FUNC2(p->apShm[i], LSM_SHM_CHUNK_SIZE);
        p->apShm[i] = 0;
      }
    }
    FUNC0(p->shmfd);
    p->shmfd = 0;
    if( bDelete ){
      char *zShm = FUNC3(p);
      if( zShm ) FUNC4(zShm);
      FUNC1(p->pEnv, zShm);
    }
  }
  return LSM_OK;
}