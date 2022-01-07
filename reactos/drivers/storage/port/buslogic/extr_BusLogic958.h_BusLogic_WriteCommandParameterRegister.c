
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_3__ {scalar_t__ IO_Address; } ;
typedef TYPE_1__ BusLogic_HostAdapter_T ;


 scalar_t__ BusLogic_CommandParameterRegisterOffset ;
 int WriteBusLogicPort (int ,scalar_t__) ;

__attribute__((used)) static void
BusLogic_WriteCommandParameterRegister(BusLogic_HostAdapter_T *HostAdapter,
                                       UCHAR Value)
{
  WriteBusLogicPort(Value,
                    HostAdapter->IO_Address + BusLogic_CommandParameterRegisterOffset);
}
