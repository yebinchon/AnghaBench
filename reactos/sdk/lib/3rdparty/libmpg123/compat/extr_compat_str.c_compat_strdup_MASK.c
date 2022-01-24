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
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int FUNC2 (char const*) ; 

char* FUNC3(const char *src)
{
	char *dest = NULL;
	if(src)
	{
		size_t len;
		len = FUNC2(src)+1;
		if((dest = FUNC0(len)))
			FUNC1(dest, src, len);
	}
	return dest;
}