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
typedef  int bfd_vma ;
typedef  int bfd_signed_vma ;

/* Variables and functions */
 scalar_t__ mode_64bit ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static void
FUNC3 (char *buf, int hex, bfd_vma disp)
{
  if (mode_64bit)
    {
      if (hex)
	{
	  char tmp[30];
	  int i;
	  buf[0] = '0';
	  buf[1] = 'x';
	  FUNC1 (tmp, disp);
	  for (i = 0; tmp[i] == '0' && tmp[i + 1]; i++);
	  FUNC2 (buf + 2, tmp + i);
	}
      else
	{
	  bfd_signed_vma v = disp;
	  char tmp[30];
	  int i;
	  if (v < 0)
	    {
	      *(buf++) = '-';
	      v = -disp;
	      /* Check for possible overflow on 0x8000000000000000.  */
	      if (v < 0)
		{
		  FUNC2 (buf, "9223372036854775808");
		  return;
		}
	    }
	  if (!v)
	    {
	      FUNC2 (buf, "0");
	      return;
	    }

	  i = 0;
	  tmp[29] = 0;
	  while (v)
	    {
	      tmp[28 - i] = (v % 10) + '0';
	      v /= 10;
	      i++;
	    }
	  FUNC2 (buf, tmp + 29 - i);
	}
    }
  else
    {
      if (hex)
	FUNC0 (buf, "0x%x", (unsigned int) disp);
      else
	FUNC0 (buf, "%d", (int) disp);
    }
}