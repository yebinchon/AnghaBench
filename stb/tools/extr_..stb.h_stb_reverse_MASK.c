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
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 

void FUNC1(void *p, size_t n, size_t sz)
{
   size_t i,j = n-1;
   for (i=0; i < j; ++i,--j) {
      FUNC0((char *) p + i * sz, (char *) p + j * sz, sz);
   }
}