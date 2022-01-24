#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  netns_storage_socket; struct TYPE_13__* var_tmp_dir; struct TYPE_13__* tmp_dir; struct TYPE_13__* id; TYPE_1__* manager; } ;
struct TYPE_12__ {int /*<<< orphan*/  exec_runtime_by_id; } ;
typedef  TYPE_2__ ExecRuntime ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,TYPE_2__*) ; 
 TYPE_2__* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  remove_tmpdir_thread ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ExecRuntime* FUNC7(ExecRuntime *rt, bool destroy) {
        int r;

        if (!rt)
                return NULL;

        if (rt->manager)
                (void) FUNC2(rt->manager->exec_runtime_by_id, rt->id);

        /* When destroy is true, then rm_rf tmp_dir and var_tmp_dir. */
        if (destroy && rt->tmp_dir) {
                FUNC3("Spawning thread to nuke %s", rt->tmp_dir);

                r = FUNC0(remove_tmpdir_thread, rt->tmp_dir);
                if (r < 0) {
                        FUNC4(r, "Failed to nuke %s: %m", rt->tmp_dir);
                        FUNC1(rt->tmp_dir);
                }

                rt->tmp_dir = NULL;
        }

        if (destroy && rt->var_tmp_dir) {
                FUNC3("Spawning thread to nuke %s", rt->var_tmp_dir);

                r = FUNC0(remove_tmpdir_thread, rt->var_tmp_dir);
                if (r < 0) {
                        FUNC4(r, "Failed to nuke %s: %m", rt->var_tmp_dir);
                        FUNC1(rt->var_tmp_dir);
                }

                rt->var_tmp_dir = NULL;
        }

        rt->id = FUNC5(rt->id);
        rt->tmp_dir = FUNC5(rt->tmp_dir);
        rt->var_tmp_dir = FUNC5(rt->var_tmp_dir);
        FUNC6(rt->netns_storage_socket);
        return FUNC5(rt);
}