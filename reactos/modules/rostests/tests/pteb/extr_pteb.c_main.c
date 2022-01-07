
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ StackLimit; scalar_t__ StackBase; } ;
struct TYPE_4__ {scalar_t__ DeallocationStack; TYPE_1__ Tib; } ;
typedef TYPE_2__* PTEB ;
typedef int DWORD ;


 int printf (char*,...) ;

int main(int argc, char* argv[])
{
   int x;
   PTEB Teb;

   printf("TEB dumpper\n");
   __asm__("movl %%fs:0x18, %0\n\t"
    : "=a" (x)
    : );
   printf("fs[0x18] %x\n", x);

   Teb = (PTEB)x;

   printf("StackBase: 0x%08lX\n", (DWORD)Teb->Tib.StackBase);
   printf("StackLimit: 0x%08lX\n", (DWORD)Teb->Tib.StackLimit);
   printf("DeallocationStack: 0x%08lX\n", (DWORD)Teb->DeallocationStack);

   return(0);
}
