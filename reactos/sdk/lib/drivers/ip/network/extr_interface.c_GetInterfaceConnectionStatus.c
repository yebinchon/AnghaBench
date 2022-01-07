
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {TYPE_1__* Context; } ;
struct TYPE_4__ {scalar_t__ State; } ;
typedef int * PULONG ;
typedef TYPE_1__* PLAN_ADAPTER ;
typedef TYPE_2__* PIP_INTERFACE ;


 scalar_t__ LAN_STATE_STARTED ;
 int MIB_IF_OPER_STATUS_DISCONNECTED ;
 int MIB_IF_OPER_STATUS_OPERATIONAL ;

VOID GetInterfaceConnectionStatus(PIP_INTERFACE Interface, PULONG Result)
{
    PLAN_ADAPTER Adapter = Interface->Context;


    if (Adapter == ((void*)0) || Adapter->State == LAN_STATE_STARTED) {
        *Result = MIB_IF_OPER_STATUS_OPERATIONAL;
    }
    else {
        *Result = MIB_IF_OPER_STATUS_DISCONNECTED;
    }
}
