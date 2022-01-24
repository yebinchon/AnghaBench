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
struct TYPE_5__ {int /*<<< orphan*/  ctx; } ;
struct TYPE_6__ {TYPE_1__ dnstls_data; } ;
typedef  TYPE_2__ Manager ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_OP_NO_COMPRESSION ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  TLS1_2_VERSION ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 

int FUNC11(Manager *manager) {
        int r;
        FUNC9(manager);

        FUNC2();
        FUNC7();
        manager->dnstls_data.ctx = FUNC3(FUNC8());

        if (!manager->dnstls_data.ctx)
                return -ENOMEM;

        FUNC5(manager->dnstls_data.ctx, TLS1_2_VERSION);
        FUNC6(manager->dnstls_data.ctx, SSL_OP_NO_COMPRESSION);
        r = FUNC4(manager->dnstls_data.ctx);
        if (r < 0)
                FUNC10("Failed to load system trust store: %s", FUNC0(FUNC1(), NULL));

        return 0;
}