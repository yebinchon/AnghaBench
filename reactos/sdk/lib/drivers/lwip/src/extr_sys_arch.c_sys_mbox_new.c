
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Valid; int Event; int ListHead; int Lock; } ;
typedef TYPE_1__ sys_mbox_t ;
typedef int err_t ;


 int ERR_OK ;
 int FALSE ;
 int InitializeListHead (int *) ;
 int KeInitializeEvent (int *,int ,int ) ;
 int KeInitializeSpinLock (int *) ;
 int NotificationEvent ;

err_t
sys_mbox_new(sys_mbox_t *mbox, int size)
{
    KeInitializeSpinLock(&mbox->Lock);

    InitializeListHead(&mbox->ListHead);

    KeInitializeEvent(&mbox->Event, NotificationEvent, FALSE);

    mbox->Valid = 1;

    return ERR_OK;
}
