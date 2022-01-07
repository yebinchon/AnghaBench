
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {TYPE_1__* Process; } ;
struct TYPE_3__ {int ProcessHandle; } ;
typedef scalar_t__ HANDLE ;


 TYPE_2__* CsrGetClientThread () ;
 int DUPLICATE_CLOSE_SOURCE ;
 int NtClose (scalar_t__) ;
 int NtDuplicateObject (int ,scalar_t__,int *,int *,int ,int ,int ) ;

VOID BaseSrvDestroyPairWaitHandles(HANDLE ServerEvent, HANDLE ClientEvent)
{
    if (ServerEvent) NtClose(ServerEvent);
    if (ClientEvent)
    {

        NtDuplicateObject(CsrGetClientThread()->Process->ProcessHandle,
                          ClientEvent,
                          ((void*)0),
                          ((void*)0),
                          0,
                          0,
                          DUPLICATE_CLOSE_SOURCE);
    }
}
