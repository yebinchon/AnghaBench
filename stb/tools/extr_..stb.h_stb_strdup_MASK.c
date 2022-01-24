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
 char* FUNC0 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*) ; 
 size_t FUNC2 (char*) ; 

char *FUNC3(char *str, void *pool)
{
   size_t len = FUNC2(str);
   char *p = FUNC0(pool, len+1);
   FUNC1(p, len+1, str);
   return p;
}