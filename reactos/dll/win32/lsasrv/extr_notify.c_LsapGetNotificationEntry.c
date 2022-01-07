
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* Flink; } ;
struct TYPE_7__ {scalar_t__ EventHandle; scalar_t__ InformationClass; } ;
typedef scalar_t__ POLICY_NOTIFICATION_INFORMATION_CLASS ;
typedef TYPE_1__* PLSA_NOTIFICATION_ENTRY ;
typedef TYPE_2__* PLIST_ENTRY ;
typedef scalar_t__ HANDLE ;


 TYPE_1__* CONTAINING_RECORD (TYPE_2__*,int ,int ) ;
 int Entry ;
 int LSA_NOTIFICATION_ENTRY ;
 TYPE_2__ NotificationListHead ;

__attribute__((used)) static
PLSA_NOTIFICATION_ENTRY
LsapGetNotificationEntry(
    HANDLE EventHandle,
    POLICY_NOTIFICATION_INFORMATION_CLASS InformationClass)
{
    PLIST_ENTRY NotificationEntry;
    PLSA_NOTIFICATION_ENTRY CurrentNotification;

    NotificationEntry = NotificationListHead.Flink;
    while (NotificationEntry != &NotificationListHead)
    {
        CurrentNotification = CONTAINING_RECORD(NotificationEntry, LSA_NOTIFICATION_ENTRY, Entry);

        if ((CurrentNotification->EventHandle == EventHandle) &&
            (CurrentNotification->InformationClass == InformationClass))
            return CurrentNotification;

        NotificationEntry = NotificationEntry->Flink;
    }

    return ((void*)0);
}
