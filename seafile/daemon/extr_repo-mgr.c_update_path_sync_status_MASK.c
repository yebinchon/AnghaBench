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
struct index_state {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  ap_q_lock; int /*<<< orphan*/  active_paths; } ;
typedef  TYPE_1__ WTStatus ;
typedef  int /*<<< orphan*/  SeafRepo ;
typedef  int /*<<< orphan*/  GList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,struct index_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5 (SeafRepo *repo, WTStatus *status,
                         struct index_state *istate, GList *ignore_list)
{
    char *path;

    while (1) {
        FUNC3 (&status->ap_q_lock);
        path = FUNC1 (status->active_paths);
        FUNC4 (&status->ap_q_lock);

        if (!path)
            break;

/* #ifdef __APPLE__ */
/*         process_active_folder (repo, path, istate, ignore_list); */
/* #else */
        FUNC2 (repo, path, istate, ignore_list);
/* #endif */

        FUNC0 (path);
    }
}