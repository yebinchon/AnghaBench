
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TSLWLocks ;


 int CHUNK_APPEND_LWLOCK_TRANCHE_NAME ;
 int RequestAddinShmemSpace (int) ;
 int RequestNamedLWLockTranche (int ,int) ;

void
ts_lwlocks_shmem_alloc()
{
 RequestNamedLWLockTranche(CHUNK_APPEND_LWLOCK_TRANCHE_NAME, 1);
 RequestAddinShmemSpace(sizeof(TSLWLocks));
}
