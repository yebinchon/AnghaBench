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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 unsigned char* FUNC2 (unsigned char*) ; 
 int FUNC3 (unsigned char*) ; 
 int FUNC4 (int) ; 

unsigned char *FUNC5 (unsigned char *string)
{
    int c;
    unsigned char *save = string;

    while ((c = FUNC3 (string))) {

	if (FUNC0 (c) == 0)
	    c = FUNC4 (c);

	FUNC1 (string, c);

	string = FUNC2 (string);

    }

    return save;
}