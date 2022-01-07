
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int eip; } ;
typedef TYPE_1__ FRAME ;


 int DPRINT (int ) ;

void HandleGPFault(FRAME* ptr)
{
 DPRINT((0,"HandleGPFault(): ptr = %x at eip: %x\n",ptr, ptr->eip));
}
