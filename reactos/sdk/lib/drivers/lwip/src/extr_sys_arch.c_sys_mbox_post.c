
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int Event; int Lock; int ListHead; } ;
typedef TYPE_1__ sys_mbox_t ;
struct TYPE_7__ {int ListEntry; void* Message; } ;
typedef TYPE_2__* PLWIP_MESSAGE_CONTAINER ;


 int ASSERT (TYPE_2__*) ;
 TYPE_2__* ExAllocatePool (int ,int) ;
 int ExInterlockedInsertTailList (int *,int *,int *) ;
 int FALSE ;
 int IO_NO_INCREMENT ;
 int KeSetEvent (int *,int ,int ) ;
 int NonPagedPool ;

void
sys_mbox_post(sys_mbox_t *mbox, void *msg)
{
    PLWIP_MESSAGE_CONTAINER Container;

    Container = ExAllocatePool(NonPagedPool, sizeof(*Container));
    ASSERT(Container);

    Container->Message = msg;

    ExInterlockedInsertTailList(&mbox->ListHead,
                                &Container->ListEntry,
                                &mbox->Lock);

    KeSetEvent(&mbox->Event, IO_NO_INCREMENT, FALSE);
}
