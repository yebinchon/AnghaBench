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
typedef  scalar_t__ SRes ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned int) ; 
 int FUNC1 (char*) ; 

int FUNC2(char *buffer, SRes val)
{
  FUNC0(buffer + FUNC1(buffer), "\nError code: %x\n", (unsigned)val);
  return 1;
}