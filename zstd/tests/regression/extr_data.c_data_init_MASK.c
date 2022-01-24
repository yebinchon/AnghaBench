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

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  data ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  g_data ; 
 int /*<<< orphan*/ * g_data_dir ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 

int FUNC6(char const* dir) {
    int err;

    if (dir == NULL)
        return EINVAL;

    /* This must be first to simplify logic. */
    err = FUNC2(dir);
    if (err != 0)
        return err;

    /* Save the cache directory. */
    g_data_dir = FUNC5(dir);
    if (g_data_dir == NULL)
        return ENOMEM;

    err = FUNC1(g_data, dir);
    if (err != 0)
        return err;

    /* If the stamp matches then we are good to go.
     * This must be called before any modifications to the data cache.
     * After this point, we MUST call stamp_write() to update the STAMP,
     * since we've updated the data cache.
     */
    if (FUNC3(dir, data))
        return 0;

    err = FUNC0(data);
    if (err != 0)
        goto out;

out:
    /* This must be last, since it must know if data_init() succeeded. */
    FUNC4(dir, data, err);
    return err;
}