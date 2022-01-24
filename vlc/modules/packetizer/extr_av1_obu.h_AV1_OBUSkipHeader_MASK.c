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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__ const*) ; 
 scalar_t__ FUNC1 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__ const*,size_t,scalar_t__*) ; 

__attribute__((used)) static bool FUNC3(const uint8_t **pp_buf, size_t *pi_buf)
{
    if(*pi_buf < 1)
        return false;
    size_t i_header = 1 + !!FUNC0(*pp_buf);
    if(FUNC1(*pp_buf))
    {
        uint8_t i_len;
        (void) FUNC2(*pp_buf, *pi_buf, &i_len);
        if(i_len == 0)
            return false;
        i_header += i_len;
    }
    if(i_header > *pi_buf)
        return false;
    *pp_buf += i_header;
    *pi_buf -= i_header;
    return true;
}