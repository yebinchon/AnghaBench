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
typedef  int /*<<< orphan*/  VOID ;
typedef  unsigned char USHORT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static VOID
FUNC1(unsigned char *Ptr)
{
  USHORT IrqMask;
  int i;

  IrqMask = *Ptr;
  Ptr++;
  IrqMask |= (*Ptr << 8);

  FUNC0("      IRQs:");

  for (i = 0; i < 16; i++)
    {
      if (IrqMask & (1 << i))
	{
	  FUNC0(" %u", i);
	}
    }

  FUNC0("\n");
}