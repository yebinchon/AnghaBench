
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ i64 ;
struct TYPE_3__ {scalar_t__ iLsmId; int iTreeId; } ;
typedef TYPE_1__ ShmReader ;


 scalar_t__ shm_sequence_ge (int ,int ) ;

__attribute__((used)) static int slotIsUsable(ShmReader *p, i64 iLsm, u32 iShmMin, u32 iShmMax){
  return(
      p->iLsmId && p->iLsmId<=iLsm
      && shm_sequence_ge(iShmMax, p->iTreeId)
      && shm_sequence_ge(p->iTreeId, iShmMin)
  );
}
