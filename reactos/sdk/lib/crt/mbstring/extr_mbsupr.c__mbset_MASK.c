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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 

unsigned char *FUNC4 (unsigned char *string, int c)
{
    unsigned char *save = string;

    if (FUNC2 (c)) {

	if (FUNC3 (c) == 0) {
	    *string++ = '\0';
	    *string++ = '\0';
	}
	else {
	    *string++ = FUNC0 (c);
	    *string++ = FUNC1 (c);
	}

    }
    else {

	*string++ = c;

    }

    return save;
}