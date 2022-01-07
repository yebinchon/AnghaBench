
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int event_cache; } ;
typedef TYPE_1__ RpcConnection_np ;
typedef scalar_t__ HANDLE ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ InterlockedExchangePointer (int *,scalar_t__) ;

__attribute__((used)) static void release_np_event(RpcConnection_np *connection, HANDLE event)
{
    event = InterlockedExchangePointer(&connection->event_cache, event);
    if (event)
        CloseHandle(event);
}
