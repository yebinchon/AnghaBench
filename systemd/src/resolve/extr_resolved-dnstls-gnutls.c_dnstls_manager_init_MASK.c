#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  cert_cred; } ;
struct TYPE_6__ {TYPE_1__ dnstls_data; } ;
typedef  TYPE_2__ Manager ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

int FUNC5(Manager *manager) {
        int r;
        FUNC0(manager);

        r = FUNC1(&manager->dnstls_data.cert_cred);
        if (r < 0)
                return -ENOMEM;

        r = FUNC2(manager->dnstls_data.cert_cred);
        if (r < 0)
                FUNC4("Failed to load system trust store: %s", FUNC3(r));

        return 0;
}