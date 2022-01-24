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
 char* FUNC0 (char const*,size_t) ; 
 char* FUNC1 (char const*,char*,size_t,int) ; 

char *FUNC2(const char *str, size_t console_width, bool eight_bit) {
        if (eight_bit)
                return FUNC1(str, "", console_width, true);
        else
                return FUNC0(str, console_width);
}