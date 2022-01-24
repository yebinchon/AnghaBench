#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* gpointer ;
struct TYPE_4__ {int /*<<< orphan*/  filelock_mgr; } ;
struct TYPE_3__ {int /*<<< orphan*/  locked_by_me; } ;
typedef  TYPE_1__ LockInfo ;

/* Variables and functions */
 TYPE_2__* seaf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static void
FUNC1 (gpointer key, gpointer value, gpointer user_data)
{
    char *repo_id = user_data;
    char *path = key;
    LockInfo *info = value;

    if (!info->locked_by_me) {
        FUNC0 (seaf->filelock_mgr,
                                            repo_id,
                                            path);
    }
}