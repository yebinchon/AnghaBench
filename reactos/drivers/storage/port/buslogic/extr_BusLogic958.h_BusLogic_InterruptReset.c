
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int InterruptReset; } ;
struct TYPE_7__ {scalar_t__ All; TYPE_1__ Bits; } ;
struct TYPE_6__ {scalar_t__ IO_Address; } ;
typedef TYPE_2__ BusLogic_HostAdapter_T ;
typedef TYPE_3__ BusLogic_ControlRegister_T ;


 scalar_t__ BusLogic_ControlRegisterOffset ;
 int TRUE ;
 int WriteBusLogicPort (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
BusLogic_InterruptReset(BusLogic_HostAdapter_T *HostAdapter)
{
  BusLogic_ControlRegister_T ControlRegister;
  ControlRegister.All = 0;
  ControlRegister.Bits.InterruptReset = TRUE;

  WriteBusLogicPort(ControlRegister.All,
       HostAdapter->IO_Address + BusLogic_ControlRegisterOffset);
}
