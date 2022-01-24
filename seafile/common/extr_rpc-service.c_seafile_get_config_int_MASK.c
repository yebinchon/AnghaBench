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
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 int /*<<< orphan*/  SEAFILE_DOMAIN ; 
 int /*<<< orphan*/  SEAF_ERR_GENERAL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  seaf ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

int
FUNC2 (const char *key, GError **error)
{
    gboolean exists = TRUE;

    int ret = FUNC1(seaf, key, &exists);

    if (!exists) {
        FUNC0 (error, SEAFILE_DOMAIN, SEAF_ERR_GENERAL, "Config not exists");
        return -1;
    }

    return ret;
}