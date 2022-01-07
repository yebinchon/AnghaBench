
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ HardwareEsp; } ;
typedef TYPE_1__* PKTRAP_FRAME ;
typedef int LONG ;


 scalar_t__ KeGetPreviousMode () ;
 scalar_t__ KernelMode ;

__attribute__((used)) static LONG
GspGetEspFromTrapFrame(PKTRAP_FRAME TrapFrame)
{
    return KeGetPreviousMode() == KernelMode ?
           (LONG)&TrapFrame->HardwareEsp : (LONG)TrapFrame->HardwareEsp;
}
