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

__attribute__((used)) static unsigned short FUNC0(unsigned short v)
{
    unsigned char c1, c2;
    c1 = v & 0xff;
    c2 = (v >> 8) & 0xff;
    return (c1 << 8) + c2;
}