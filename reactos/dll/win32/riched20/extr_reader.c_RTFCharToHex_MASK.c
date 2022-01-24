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
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 char FUNC2 (char) ; 

int FUNC3(char c)
{
	if (FUNC1 (c))
		c = FUNC2 (c);
	if (FUNC0 (c))
		return (c - '0');	/* '0'..'9' */
	return (c - 'a' + 10);		/* 'a'..'f' */
}