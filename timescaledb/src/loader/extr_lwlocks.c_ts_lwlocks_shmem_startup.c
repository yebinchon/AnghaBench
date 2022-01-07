
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int lock; } ;
struct TYPE_5__ {int * chunk_append; } ;
typedef int TSLWLocks ;
typedef int LWLock ;


 int AddinShmemInitLock ;
 int CHUNK_APPEND_LWLOCK_TRANCHE_NAME ;
 TYPE_4__* GetNamedLWLockTranche (int ) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int RENDEZVOUS_CHUNK_APPEND_LWLOCK ;
 TYPE_1__* ShmemInitStruct (int ,int,int*) ;
 int TS_LWLOCKS_SHMEM_NAME ;
 scalar_t__ find_rendezvous_variable (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* ts_lwlocks ;

void
ts_lwlocks_shmem_startup()
{
 bool found;
 LWLock **lock_pointer;

 LWLockAcquire(AddinShmemInitLock, LW_EXCLUSIVE);
 ts_lwlocks = ShmemInitStruct(TS_LWLOCKS_SHMEM_NAME, sizeof(TSLWLocks), &found);
 if (!found)
 {
  memset(ts_lwlocks, 0, sizeof(TSLWLocks));
  ts_lwlocks->chunk_append = &(GetNamedLWLockTranche(CHUNK_APPEND_LWLOCK_TRANCHE_NAME))->lock;
 }
 LWLockRelease(AddinShmemInitLock);






 lock_pointer = (LWLock **) find_rendezvous_variable(RENDEZVOUS_CHUNK_APPEND_LWLOCK);
 *lock_pointer = ts_lwlocks->chunk_append;
}
