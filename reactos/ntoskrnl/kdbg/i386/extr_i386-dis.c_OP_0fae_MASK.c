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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int mod ; 
 int obuf ; 
 int reg ; 
 scalar_t__ rm ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4 (int bytemode, int sizeflag)
{
  if (mod == 3)
    {
      if (reg == 7)
	FUNC2 (obuf + FUNC3 (obuf) - sizeof ("clflush") + 1, "sfence");

      if (reg < 5 || rm != 0)
	{
	  FUNC0 ();	/* bad sfence, mfence, or lfence */
	  return;
	}
    }
  else if (reg != 7)
    {
      FUNC0 ();		/* bad clflush */
      return;
    }

  FUNC1 (bytemode, sizeflag);
}