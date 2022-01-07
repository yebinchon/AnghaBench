
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int LDN; int CSN; } ;
typedef TYPE_1__* PISAPNP_LOGICAL_DEVICE ;
typedef scalar_t__ BOOLEAN ;


 int ActivateDevice (int ) ;
 int DeactivateDevice (int ) ;
 int HwDelay () ;
 int SendKey () ;
 int WaitForKey () ;
 int Wake (int ) ;

VOID
DeviceActivation(PISAPNP_LOGICAL_DEVICE IsaDevice,
                 BOOLEAN Activate)
{
  WaitForKey();
  SendKey();
  Wake(IsaDevice->CSN);

  if (Activate)
    ActivateDevice(IsaDevice->LDN);
  else
    DeactivateDevice(IsaDevice->LDN);

  HwDelay();

  WaitForKey();
}
