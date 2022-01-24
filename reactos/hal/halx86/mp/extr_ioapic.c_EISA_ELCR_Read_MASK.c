#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int ULONG ;
typedef  int /*<<< orphan*/  PUCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ULONG FUNC2(ULONG irq)
{
   if (irq < 16) 
   {
      PUCHAR port = (PUCHAR)(0x4d0 + (irq >> 3));
      return (FUNC1(port) >> (irq & 7)) & 1;
   }
   FUNC0("Broken MPtable reports ISA irq %d\n", irq);
   return 0;
}