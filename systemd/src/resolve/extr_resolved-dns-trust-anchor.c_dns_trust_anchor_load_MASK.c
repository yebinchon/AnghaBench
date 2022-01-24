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
typedef  int /*<<< orphan*/  DnsTrustAnchor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dns_trust_anchor_load_negative ; 
 int /*<<< orphan*/  dns_trust_anchor_load_positive ; 
 int FUNC5 (int,char*) ; 

int FUNC6(DnsTrustAnchor *d) {
        int r;

        FUNC0(d);

        /* If loading things from disk fails, we don't consider this fatal */
        (void) FUNC4(d, ".positive", dns_trust_anchor_load_positive);
        (void) FUNC4(d, ".negative", dns_trust_anchor_load_negative);

        /* However, if the built-in DS fails, then we have a problem. */
        r = FUNC2(d);
        if (r < 0)
                return FUNC5(r, "Failed to add built-in positive trust anchor: %m");

        r = FUNC1(d);
        if (r < 0)
                return FUNC5(r, "Failed to add built-in negative trust anchor: %m");

        FUNC3(d);

        return 0;
}