#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ StackLimit; scalar_t__ StackBase; } ;
struct TYPE_4__ {scalar_t__ DeallocationStack; TYPE_1__ Tib; } ;
typedef  TYPE_2__* PTEB ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

int FUNC1(int argc, char* argv[])
{
   int x;
   PTEB Teb;

   FUNC0("TEB dumpper\n");
   __asm__("movl %%fs:0x18, %0\n\t"
	   : "=a" (x)
	   : /* no inputs */);
   FUNC0("fs[0x18] %x\n", x);

   Teb = (PTEB)x;

   FUNC0("StackBase: 0x%08lX\n", (DWORD)Teb->Tib.StackBase);
   FUNC0("StackLimit: 0x%08lX\n", (DWORD)Teb->Tib.StackLimit);
   FUNC0("DeallocationStack: 0x%08lX\n", (DWORD)Teb->DeallocationStack);

   return(0);
}