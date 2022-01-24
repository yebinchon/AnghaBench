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
struct local_address {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct local_address*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct local_address**) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct local_address**) ; 
 struct local_address* FUNC4 (struct local_address*) ; 
 int /*<<< orphan*/  FUNC5 (struct local_address*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(int argc, char *argv[]) {
        struct local_address *a;
        int n;

        FUNC7(LOG_DEBUG);

        a = NULL;
        n = FUNC2(NULL, 0, AF_UNSPEC, &a);
        FUNC0(n >= 0);

        FUNC6("Local Addresses:\n");
        FUNC5(a, (unsigned) n);
        a = FUNC4(a);

        n = FUNC3(NULL, 0, AF_UNSPEC, &a);
        FUNC0(n >= 0);

        FUNC6("Local Gateways:\n");
        FUNC5(a, (unsigned) n);
        FUNC1(a);

        return 0;
}