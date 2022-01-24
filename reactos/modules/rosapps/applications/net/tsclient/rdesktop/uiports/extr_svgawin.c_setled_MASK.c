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
 int /*<<< orphan*/  KDGETLED ; 
 int /*<<< orphan*/  KDSETLED ; 
 int /*<<< orphan*/  O_NOCTTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,...) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(int mask, int state)
{
  int fd;
  long int leds;

  if (( fd=FUNC2("/dev/console", O_NOCTTY)) != -1 )
  {
    if (FUNC1 (fd, KDGETLED, &leds) != -1)
    {
      leds &= 7;
      if (state)
        leds |= mask;
      else
        leds &= ~mask;
      FUNC1 (fd, KDSETLED, leds);
    }
    FUNC0(fd);
  }
}