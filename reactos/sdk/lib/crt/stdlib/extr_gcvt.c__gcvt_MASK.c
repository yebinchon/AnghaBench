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
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,double) ; 
 char* FUNC2 (char*,char) ; 
 int FUNC3 (char*) ; 

char *
FUNC4 (double value, int ndigits, char *buf)
{
  char *p = buf;

  FUNC1 (buf, "%-#.*g", ndigits, value);

  /* It seems they expect us to return .XXXX instead of 0.XXXX  */
  if (*p == '-')
    p++;
  if (*p == '0' && p[1] == '.')
    FUNC0 (p, p + 1, FUNC3 (p + 1) + 1);

  /* They want Xe-YY, not X.e-YY, and XXXX instead of XXXX.  */
  p = FUNC2 (buf, 'e');
  if (!p)
    {
      p = buf + FUNC3 (buf);
      /* They don't want trailing zeroes.  */
      while (p[-1] == '0' && p > buf + 2)
	*--p = '\0';
    }
  if (p > buf && p[-1] == '.')
    FUNC0 (p - 1, p, FUNC3 (p) + 1);
  return buf;
}