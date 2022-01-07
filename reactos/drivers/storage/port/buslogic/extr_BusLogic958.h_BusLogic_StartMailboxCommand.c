
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BusLogic_HostAdapter_T ;


 int BusLogic_ExecuteMailboxCommand ;
 int BusLogic_WriteCommandParameterRegister (int *,int ) ;

__attribute__((used)) static void
BusLogic_StartMailboxCommand(BusLogic_HostAdapter_T *HostAdapter)
{
  BusLogic_WriteCommandParameterRegister(HostAdapter,
                                         BusLogic_ExecuteMailboxCommand);
}
