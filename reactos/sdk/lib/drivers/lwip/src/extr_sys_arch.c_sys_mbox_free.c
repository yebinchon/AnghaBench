
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ListHead; } ;
typedef TYPE_1__ sys_mbox_t ;


 int ASSERT (int ) ;
 int IsListEmpty (int *) ;
 int sys_mbox_set_invalid (TYPE_1__*) ;

void
sys_mbox_free(sys_mbox_t *mbox)
{
    ASSERT(IsListEmpty(&mbox->ListHead));

    sys_mbox_set_invalid(mbox);
}
