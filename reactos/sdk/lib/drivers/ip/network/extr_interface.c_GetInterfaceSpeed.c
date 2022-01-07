
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int Context; } ;
struct TYPE_4__ {int Speed; } ;
typedef int * PUINT ;
typedef TYPE_1__* PLAN_ADAPTER ;
typedef TYPE_2__* PIP_INTERFACE ;
typedef int NTSTATUS ;


 int STATUS_SUCCESS ;

NTSTATUS GetInterfaceSpeed( PIP_INTERFACE Interface, PUINT Speed ) {
    PLAN_ADAPTER IF = (PLAN_ADAPTER)Interface->Context;

    *Speed = IF->Speed;

    return STATUS_SUCCESS;
}
