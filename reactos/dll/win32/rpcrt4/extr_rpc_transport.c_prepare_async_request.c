
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int completion_event; } ;
typedef TYPE_1__ RpcHttpAsyncData ;


 int ResetEvent (int ) ;
 int RpcHttpAsyncData_AddRef (TYPE_1__*) ;

__attribute__((used)) static void prepare_async_request(RpcHttpAsyncData *async_data)
{
    ResetEvent(async_data->completion_event);
    RpcHttpAsyncData_AddRef(async_data);
}
