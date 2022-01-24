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
typedef  int /*<<< orphan*/  SSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_MODE_AUTO_RETRY ; 
 int /*<<< orphan*/  SSL_SESS_CACHE_CLIENT ; 
 int /*<<< orphan*/  SSL_VERIFY_NONE ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

SSL_CTX *FUNC9() {
    SSL_CTX *ctx = NULL;

    FUNC7();
    FUNC6();
    FUNC0();

    if ((ctx = FUNC1(FUNC8()))) {
        FUNC4(ctx, SSL_VERIFY_NONE, NULL);
        FUNC5(ctx, 0);
        FUNC2(ctx, SSL_MODE_AUTO_RETRY);
        FUNC3(ctx, SSL_SESS_CACHE_CLIENT);
    }

    return ctx;
}