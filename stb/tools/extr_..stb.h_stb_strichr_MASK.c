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
 char* FUNC0 (char*,char,char) ; 
 char* FUNC1 (char*,char) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (char) ; 

char *FUNC4(char *s, char t)
{
   if (FUNC2(t) == FUNC3(t))
      return FUNC1(s,t);
   return FUNC0(s, (char) FUNC2(t), (char) FUNC3(t));
}