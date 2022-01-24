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
typedef  int ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 

void FUNC1(char *buffer, char *data, ptrdiff_t curlen, ptrdiff_t newlen)
{
   if (newlen < curlen) {
      ptrdiff_t z1 = newlen >> 1, z2 = newlen-z1;
      FUNC0(buffer, data, z1-1);
      buffer[z1-1] = '.';
      buffer[z1-0] = '.';
      FUNC0(buffer+z1+1, data+curlen-z2+1, z2-1);
   } else
      FUNC0(buffer, data, curlen);
}