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
struct TYPE_3__ {int /*<<< orphan*/  pools_lock; int /*<<< orphan*/  connection_pools; } ;
typedef  TYPE_1__ HttpTxPriv ;
typedef  int /*<<< orphan*/  ConnectionPool ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ConnectionPool *
FUNC6 (HttpTxPriv *priv, const char *host)
{
    ConnectionPool *pool;

    FUNC4 (&priv->pools_lock);
    pool = FUNC2 (priv->connection_pools, host);
    if (!pool) {
        pool = FUNC0 (host);
        FUNC1 (priv->connection_pools, FUNC3(host), pool);
    }
    FUNC5 (&priv->pools_lock);

    return pool;
}