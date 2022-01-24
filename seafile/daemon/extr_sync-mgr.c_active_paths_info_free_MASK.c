#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  synced_tree; int /*<<< orphan*/  syncing_tree; int /*<<< orphan*/  paths; } ;
typedef  TYPE_1__ ActivePathsInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (ActivePathsInfo *info)
{
    if (!info)
        return;
    FUNC1 (info->paths);
    FUNC2 (info->syncing_tree);
    FUNC2 (info->synced_tree);
    FUNC0 (info);
}