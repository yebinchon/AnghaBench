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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,size_t,char const*) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,size_t,char const*) ; 

size_t FUNC2(uint8_t *restrict buf, size_t size,
                                   const char *name, const char *value)
{
    size_t ret = 1, val;

    if (size > 0)
    {
        *(buf++) = 0x10;
        size--;
    }

    val = FUNC1(buf, size, name);
    if (size >= val)
    {
        buf += val;
        size -= val;
    }
    else
        size = 0;
    ret += val;

    val = FUNC0(buf, size, value);
    if (size >= val)
    {
        buf += val;
        size -= val;
    }
    else
        size = 0;
    ret += val;

    return ret;
}