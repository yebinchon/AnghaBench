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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ ,size_t) ; 

int FUNC3(uint8_t **buf, size_t *buflen, uint16_t code,
                        size_t optlen, const void *optval) {
        int r;

        FUNC0(optval || optlen == 0, -EINVAL);

        r = FUNC2(buf, buflen, code, optlen);
        if (r < 0)
                return r;

        FUNC1(*buf, optval, optlen);

        *buf += optlen;
        *buflen -= optlen;

        return 0;
}