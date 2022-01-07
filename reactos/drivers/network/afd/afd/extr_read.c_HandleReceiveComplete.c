
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
typedef scalar_t__ ULONG_PTR ;
struct TYPE_5__ {scalar_t__ Content; scalar_t__ Size; } ;
struct TYPE_6__ {void* TdiReceiveClosed; TYPE_1__ Recv; scalar_t__ LastReceiveStatus; } ;
typedef TYPE_2__* PAFD_FCB ;
typedef scalar_t__ NTSTATUS ;


 int ASSERT (int) ;
 int RefillSocketBuffer (TYPE_2__*) ;
 scalar_t__ STATUS_SUCCESS ;
 void* TRUE ;

__attribute__((used)) static VOID HandleReceiveComplete( PAFD_FCB FCB, NTSTATUS Status, ULONG_PTR Information )
{
    FCB->LastReceiveStatus = Status;


    if (FCB->TdiReceiveClosed)
    {

    }

    else if (Status == STATUS_SUCCESS)
    {
        FCB->Recv.Content += Information;
        ASSERT(FCB->Recv.Content <= FCB->Recv.Size);


        if (Information == 0)
        {

            FCB->TdiReceiveClosed = TRUE;
        }
        else
        {

            RefillSocketBuffer(FCB);
        }
    }

    else
    {

        FCB->TdiReceiveClosed = TRUE;
    }
}
