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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 

void    FUNC1(FILE *f, unsigned int z)
{
   if (z >= 0x10000000) FUNC0(0xF0,f);
   if (z >= 0x00200000) FUNC0((z < 0x10000000 ? 0xE0 : 0)+(z>>24),f);
   if (z >= 0x00004000) FUNC0((z < 0x00200000 ? 0xC0 : 0)+(z>>16),f);
   if (z >= 0x00000080) FUNC0((z < 0x00004000 ? 0x80 : 0)+(z>> 8),f);
   FUNC0(z,f);
}