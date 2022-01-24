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
typedef  int /*<<< orphan*/  SearpcClient ;
typedef  int /*<<< orphan*/  GList ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 int /*<<< orphan*/  SEAFILE_TYPE_REPO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int,char*,int,char*,int) ; 

GList *
FUNC1 (SearpcClient *client,
                       int offset,
                       int limit, GError **error)
{
    return FUNC0 (
        client, "seafile_get_repo_list", SEAFILE_TYPE_REPO, error,
        2, "int", offset, "int", limit);
}