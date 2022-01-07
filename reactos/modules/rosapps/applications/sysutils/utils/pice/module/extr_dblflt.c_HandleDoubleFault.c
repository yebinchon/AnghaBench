
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FRAME ;


 int DPRINT (int ) ;

void HandleDoubleFault(FRAME* ptr)
{
    DPRINT((0,"HandleDoubleFault(): ptr = %x\n",ptr));
}
