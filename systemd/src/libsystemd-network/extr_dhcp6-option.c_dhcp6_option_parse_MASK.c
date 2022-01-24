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
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ *,size_t*) ; 

int FUNC2(uint8_t **buf, size_t *buflen, uint16_t *optcode,
                       size_t *optlen, uint8_t **optvalue) {
        int r;

        FUNC0(buf && buflen && optcode && optlen && optvalue, -EINVAL);

        r = FUNC1(buf, buflen, optcode, optlen);
        if (r < 0)
                return r;

        if (*optlen > *buflen)
                return -ENOBUFS;

        *optvalue = *buf;
        *buflen -= *optlen;
        *buf += *optlen;

        return 0;
}