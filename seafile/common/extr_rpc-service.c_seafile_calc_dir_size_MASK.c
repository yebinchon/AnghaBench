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
typedef  int gint64 ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 int /*<<< orphan*/  SEAFILE_DOMAIN ; 
 int /*<<< orphan*/  SEAF_ERR_BAD_ARGS ; 
 int FUNC0 (char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

int
FUNC3 (const char *path, GError **error)
{
    if (!path) {
        FUNC1 (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Argument should not be null");
        return -1;
    }

    gint64 size_64 = FUNC0(path, error);
    if (size_64 < 0) {
        FUNC2 ("failed to calculate dir size for %s\n", path);
        return -1;
    }

    /* get the size in MB */
    int size = (int) (size_64 >> 20);
    return size;
}