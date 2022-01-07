
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG ;
struct TYPE_8__ {int ResourceThreadId; } ;
struct TYPE_9__ {TYPE_1__ LowIoContext; scalar_t__ FcbPagingIoResourceAcquired; scalar_t__ FcbResourceAcquired; } ;
typedef TYPE_2__* PRX_CONTEXT ;
typedef int PCSTR ;
typedef scalar_t__ BOOLEAN ;


 int ASSERT (int ) ;
 scalar_t__ FALSE ;
 int PAGED_CODE () ;
 int RxCaptureFcb ;
 int RxReleaseFcb (TYPE_2__*,int *) ;
 int RxReleaseFcbForThread (TYPE_2__*,int *,int ) ;
 int RxReleasePagingIoResource (TYPE_2__*,int *) ;
 int RxReleasePagingIoResourceForThread (TYPE_2__*,int *,int ) ;
 int * capFcb ;

VOID
__RxWriteReleaseResources(
    PRX_CONTEXT RxContext,
    BOOLEAN ResourceOwnerSet,
    ULONG LineNumber,
    PCSTR FileName,
    ULONG SerialNumber)
{
    RxCaptureFcb;

    PAGED_CODE();

    ASSERT(RxContext != ((void*)0));
    ASSERT(capFcb != ((void*)0));


    if (RxContext->FcbResourceAcquired)
    {

        if (ResourceOwnerSet)
        {
            RxReleaseFcbForThread(RxContext, capFcb, RxContext->LowIoContext.ResourceThreadId);
        }
        else
        {
            RxReleaseFcb(RxContext, capFcb);
        }

        RxContext->FcbResourceAcquired = FALSE;
    }


    if (RxContext->FcbPagingIoResourceAcquired)
    {

        if (ResourceOwnerSet)
        {
            RxReleasePagingIoResourceForThread(RxContext, capFcb, RxContext->LowIoContext.ResourceThreadId);
        }
        else
        {
            RxReleasePagingIoResource(RxContext, capFcb);
        }


    }
}
