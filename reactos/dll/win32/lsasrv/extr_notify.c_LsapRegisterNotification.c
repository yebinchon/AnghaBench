
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int InformationClass; int NotificationEventHandle; scalar_t__ Register; } ;
struct TYPE_11__ {TYPE_1__ Request; } ;
struct TYPE_13__ {TYPE_2__ PolicyChangeNotify; } ;
struct TYPE_12__ {int Entry; int EventHandle; int InformationClass; } ;
typedef TYPE_3__* PLSA_NOTIFICATION_ENTRY ;
typedef TYPE_4__* PLSA_API_MSG ;
typedef int NTSTATUS ;
typedef int LSA_NOTIFICATION_ENTRY ;


 int FIXME (char*,TYPE_4__*) ;
 int HEAP_ZERO_MEMORY ;
 int InsertHeadList (int *,int *) ;
 TYPE_3__* LsapGetNotificationEntry (int ,int ) ;
 int NotificationListHead ;
 int NotificationListLock ;
 int RemoveEntryList (int *) ;
 int RtlAcquireResourceExclusive (int *,int ) ;
 TYPE_3__* RtlAllocateHeap (int ,int ,int) ;
 int RtlFreeHeap (int ,int ,TYPE_3__*) ;
 int RtlGetProcessHeap () ;
 int RtlReleaseResource (int *) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_INVALID_HANDLE ;
 int STATUS_SUCCESS ;
 int TRUE ;

NTSTATUS
LsapRegisterNotification(
    PLSA_API_MSG pRequestMsg)
{
    PLSA_NOTIFICATION_ENTRY pEntry;
    NTSTATUS Status = STATUS_SUCCESS;

    FIXME("LsapRegisterNotification(%p)\n", pRequestMsg);


    RtlAcquireResourceExclusive(&NotificationListLock, TRUE);

    if (pRequestMsg->PolicyChangeNotify.Request.Register)
    {

        pEntry = RtlAllocateHeap(RtlGetProcessHeap(),
                                 HEAP_ZERO_MEMORY,
                                 sizeof(LSA_NOTIFICATION_ENTRY));
        if (pEntry == ((void*)0))
        {
            Status = STATUS_INSUFFICIENT_RESOURCES;
            goto done;
        }

        pEntry->InformationClass = pRequestMsg->PolicyChangeNotify.Request.InformationClass;
        pEntry->EventHandle = pRequestMsg->PolicyChangeNotify.Request.NotificationEventHandle;

        InsertHeadList(&NotificationListHead,
                       &pEntry->Entry);
    }
    else
    {

        pEntry = LsapGetNotificationEntry(pRequestMsg->PolicyChangeNotify.Request.NotificationEventHandle,
                                          pRequestMsg->PolicyChangeNotify.Request.InformationClass);
        if (pEntry == ((void*)0))
        {
            Status = STATUS_INVALID_HANDLE;
            goto done;
        }

        RemoveEntryList(&pEntry->Entry);
        RtlFreeHeap(RtlGetProcessHeap(), 0, pEntry);
    }

done:

    RtlReleaseResource(&NotificationListLock);

    return Status;
}
