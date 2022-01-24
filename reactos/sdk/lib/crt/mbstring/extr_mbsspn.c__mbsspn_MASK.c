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
 scalar_t__ FUNC0 (unsigned char const*,int) ; 
 unsigned char* FUNC1 (unsigned char*) ; 
 int FUNC2 (unsigned char const*) ; 

size_t FUNC3 (const unsigned char *str1, const unsigned char *str2)
{
    int c;
    const unsigned char *save = str1;

    while ((c = FUNC2 (str1))) {

	if (FUNC0 (str2, c) == 0)
	    break;

	str1 = FUNC1 ((unsigned char *) str1);

    }

    return str1 - save;
}