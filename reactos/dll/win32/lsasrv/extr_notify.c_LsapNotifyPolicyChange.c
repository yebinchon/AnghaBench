
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_7__ {struct TYPE_7__* Flink; } ;
struct TYPE_6__ {scalar_t__ InformationClass; scalar_t__ EventHandle; } ;
typedef scalar_t__ POLICY_NOTIFICATION_INFORMATION_CLASS ;
typedef TYPE_1__* PLSA_NOTIFICATION_ENTRY ;
typedef TYPE_2__* PLIST_ENTRY ;


 TYPE_1__* CONTAINING_RECORD (TYPE_2__*,int ,int ) ;
 int Entry ;
 int FIXME (char*,scalar_t__) ;
 int LSA_NOTIFICATION_ENTRY ;
 TYPE_2__ NotificationListHead ;
 int NotificationListLock ;
 int RtlAcquireResourceShared (int *,int ) ;
 int RtlReleaseResource (int *) ;
 int TRUE ;

VOID
LsapNotifyPolicyChange(
    POLICY_NOTIFICATION_INFORMATION_CLASS InformationClass)
{
    PLIST_ENTRY NotificationEntry;
    PLSA_NOTIFICATION_ENTRY CurrentNotification;

    FIXME("LsapNotifyPolicyChange(%lu)\n", InformationClass);


    RtlAcquireResourceShared(&NotificationListLock, TRUE);

    NotificationEntry = NotificationListHead.Flink;
    while (NotificationEntry != &NotificationListHead)
    {
        CurrentNotification = CONTAINING_RECORD(NotificationEntry, LSA_NOTIFICATION_ENTRY, Entry);

        if (CurrentNotification->InformationClass == InformationClass)
        {
            FIXME("Notify event %p\n", CurrentNotification->EventHandle);

        }

        NotificationEntry = NotificationEntry->Flink;
    }


    RtlReleaseResource(&NotificationListLock);
}
