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
typedef  int /*<<< orphan*/  DnsResourceRecord ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char const*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const**) ; 

int FUNC3(DnsResourceRecord *rr, const char *zone) {
        const char *signer;
        int r;

        FUNC0(rr);

        r = FUNC2(rr, &signer);
        if (r < 0)
                return r;

        return FUNC1(zone, signer);
}