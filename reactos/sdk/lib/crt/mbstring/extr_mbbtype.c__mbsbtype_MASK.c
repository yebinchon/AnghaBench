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
 int _MBC_ILLEGAL ; 
 int _MBC_LEAD ; 
 int _MBC_SINGLE ; 
 int _MBC_TRAIL ; 
 scalar_t__ FUNC0 (unsigned char const) ; 
 scalar_t__ FUNC1 (unsigned char const) ; 

int FUNC2( const unsigned char *str, size_t n )
{
  int lead = 0;
  const unsigned char *end = str + n;

  /* Lead bytes can also be trail bytes so we need to analyse the string.
   * Also we must return _MBC_ILLEGAL for chars past the end of the string
   */
  while (str < end) /* Note: we skip the last byte - will check after the loop */
  {
    if (!*str)
      return _MBC_ILLEGAL;
    lead = !lead && FUNC0(*str);
    str++;
  }

  if (lead)
    if (FUNC1(*str))
      return _MBC_TRAIL;
    else
      return _MBC_ILLEGAL;
  else
    if (FUNC0(*str))
      return _MBC_LEAD;
    else
      return _MBC_SINGLE;
}