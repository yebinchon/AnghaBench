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
typedef  scalar_t__ stbi_uc ;
typedef  int /*<<< orphan*/  stbi ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(stbi *s,const char *str)
{
   int i;
   for (i=0; i<4; ++i)
      if (FUNC0(s) != (stbi_uc)str[i])
         return 0;

   return 1;
}