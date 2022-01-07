
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int event_cache; } ;
typedef TYPE_1__ RpcConnection_np ;
typedef scalar_t__ HANDLE ;


 scalar_t__ CreateEventW (int *,int ,int ,int *) ;
 int FALSE ;
 scalar_t__ InterlockedExchangePointer (int *,int *) ;
 int TRUE ;

__attribute__((used)) static HANDLE get_np_event(RpcConnection_np *connection)
{
    HANDLE event = InterlockedExchangePointer(&connection->event_cache, ((void*)0));
    return event ? event : CreateEventW(((void*)0), TRUE, FALSE, ((void*)0));
}
