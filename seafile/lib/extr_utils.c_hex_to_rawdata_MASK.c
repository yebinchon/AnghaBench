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
 int FUNC0 (char const) ; 

int
FUNC1 (const char *hex_str, unsigned char *rawdata, int n_bytes)
{
    int i;
    for (i = 0; i < n_bytes; i++) {
        unsigned int val = (FUNC0(hex_str[0]) << 4) | FUNC0(hex_str[1]);
        if (val & ~0xff)
            return -1;
        *rawdata++ = val;
        hex_str += 2;
    }
    return 0;
}