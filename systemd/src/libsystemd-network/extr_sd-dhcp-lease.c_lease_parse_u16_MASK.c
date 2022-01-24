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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  be16_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__ const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(const uint8_t *option, size_t len, uint16_t *ret, uint16_t min) {
        FUNC0(option);
        FUNC0(ret);

        if (len != 2)
                return -EINVAL;

        *ret = FUNC1((be16_t*) option);
        if (*ret < min)
                *ret = min;

        return 0;
}