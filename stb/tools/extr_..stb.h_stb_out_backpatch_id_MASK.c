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
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ stb__out ; 
 int /*<<< orphan*/  stb__outfile ; 

__attribute__((used)) static size_t FUNC1(void)
{
   if (stb__out)
      return (size_t) stb__out;
   else
      return FUNC0(stb__outfile);
}