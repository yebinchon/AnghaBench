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

__attribute__((used)) static void
#if defined(__i386__)  /*{*/
__attribute__((regparm(2), stdcall))
#endif  /*}*/
FUNC0(char *p, size_t len)
{
    if (len) do {
        *p++= 0;
    } while (--len);
}