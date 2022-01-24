#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int n_skip_labels_source; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ DnsResourceRecord ;

/* Variables and functions */
 int ENODATA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(DnsResourceRecord *rr) {
        int r;

        FUNC0(rr);

        /* Returns > 0 if the RR is generated from a wildcard, and is not the asterisk name itself */

        if (rr->n_skip_labels_source == (unsigned) -1)
                return -ENODATA;

        if (rr->n_skip_labels_source == 0)
                return 0;

        if (rr->n_skip_labels_source > 1)
                return 1;

        r = FUNC1(FUNC2(rr->key), "*");
        if (r < 0)
                return r;

        return !r;
}