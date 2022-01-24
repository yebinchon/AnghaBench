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
typedef  int /*<<< orphan*/  aucMagic ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,unsigned char*,int) ; 

int FUNC1(FILE *fp)
{
   unsigned char aucMagic[] = {'N','T','F','S',' ',' ',' ',' '};

   return FUNC0(fp, 0x03, aucMagic, sizeof(aucMagic));
}