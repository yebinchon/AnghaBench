
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int netns_storage_socket; struct TYPE_13__* var_tmp_dir; struct TYPE_13__* tmp_dir; struct TYPE_13__* id; TYPE_1__* manager; } ;
struct TYPE_12__ {int exec_runtime_by_id; } ;
typedef TYPE_2__ ExecRuntime ;


 int asynchronous_job (int ,TYPE_2__*) ;
 int free (TYPE_2__*) ;
 int hashmap_remove (int ,TYPE_2__*) ;
 int log_debug (char*,TYPE_2__*) ;
 int log_warning_errno (int,char*,TYPE_2__*) ;
 TYPE_2__* mfree (TYPE_2__*) ;
 int remove_tmpdir_thread ;
 int safe_close_pair (int ) ;

__attribute__((used)) static ExecRuntime* exec_runtime_free(ExecRuntime *rt, bool destroy) {
        int r;

        if (!rt)
                return ((void*)0);

        if (rt->manager)
                (void) hashmap_remove(rt->manager->exec_runtime_by_id, rt->id);


        if (destroy && rt->tmp_dir) {
                log_debug("Spawning thread to nuke %s", rt->tmp_dir);

                r = asynchronous_job(remove_tmpdir_thread, rt->tmp_dir);
                if (r < 0) {
                        log_warning_errno(r, "Failed to nuke %s: %m", rt->tmp_dir);
                        free(rt->tmp_dir);
                }

                rt->tmp_dir = ((void*)0);
        }

        if (destroy && rt->var_tmp_dir) {
                log_debug("Spawning thread to nuke %s", rt->var_tmp_dir);

                r = asynchronous_job(remove_tmpdir_thread, rt->var_tmp_dir);
                if (r < 0) {
                        log_warning_errno(r, "Failed to nuke %s: %m", rt->var_tmp_dir);
                        free(rt->var_tmp_dir);
                }

                rt->var_tmp_dir = ((void*)0);
        }

        rt->id = mfree(rt->id);
        rt->tmp_dir = mfree(rt->tmp_dir);
        rt->var_tmp_dir = mfree(rt->var_tmp_dir);
        safe_close_pair(rt->netns_storage_socket);
        return mfree(rt);
}
