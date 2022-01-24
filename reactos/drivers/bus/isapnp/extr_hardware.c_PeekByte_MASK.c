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
typedef  int USHORT ;
typedef  int /*<<< orphan*/  PUCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
USHORT
FUNC3(PUCHAR ReadDataPort)
{
  USHORT i;

  for (i = 0; i < 20; i++)
  {
    if (FUNC2(ReadDataPort) & 0x01)
      return FUNC1(ReadDataPort);

    FUNC0();
  }

  return 0xFF;
}