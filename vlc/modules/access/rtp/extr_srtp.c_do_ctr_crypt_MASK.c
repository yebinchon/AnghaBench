#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  gcry_cipher_hd_t ;
struct TYPE_3__ {size_t const quot; int rem; } ;
typedef  TYPE_1__ div_t ;

/* Variables and functions */
 TYPE_1__ FUNC0 (size_t,size_t const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t const,int /*<<< orphan*/ *,size_t const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void const*,size_t const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5 (gcry_cipher_hd_t hd, const void *ctr, uint8_t *data, size_t len)
{
    const size_t ctrlen = 16;
    div_t d = FUNC0 (len, ctrlen);

    if (FUNC2 (hd, ctr, ctrlen)
     || FUNC1 (hd, data, d.quot * ctrlen, NULL, 0))
        return -1;

    if (d.rem)
    {
        /* Truncated last block */
        uint8_t dummy[ctrlen];
        data += d.quot * ctrlen;
        FUNC3 (dummy, data, d.rem);
        FUNC4 (dummy + d.rem, 0, ctrlen - d.rem);

        if (FUNC1 (hd, dummy, ctrlen, data, ctrlen))
            return -1;
        FUNC3 (data, dummy, d.rem);
    }

    return 0;
}