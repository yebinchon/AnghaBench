
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {void* UserBuffer; int MdlAddress; } ;
typedef TYPE_1__* PIRP ;


 void* MmGetSystemAddressForMdlSafe (int ,int ) ;

__attribute__((used)) static __inline void* map_user_buffer(PIRP Irp, ULONG priority) {
    if (!Irp->MdlAddress) {
        return Irp->UserBuffer;
    } else {
        return MmGetSystemAddressForMdlSafe(Irp->MdlAddress, priority);
    }
}
