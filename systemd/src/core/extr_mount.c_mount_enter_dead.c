
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ result; int dynamic_creds; int exec_context; int exec_runtime; } ;
typedef scalar_t__ MountResult ;
typedef TYPE_1__ Mount ;


 int MOUNT_DEAD ;
 int MOUNT_FAILED ;
 scalar_t__ MOUNT_SUCCESS ;
 int UNIT (TYPE_1__*) ;
 int UNIT_DEPENDENCY_MOUNTINFO_IMPLICIT ;
 int assert (TYPE_1__*) ;
 int dynamic_creds_destroy (int *) ;
 int exec_runtime_unref (int ,int) ;
 int mount_result_to_string (scalar_t__) ;
 int mount_set_state (TYPE_1__*,int ) ;
 int unit_destroy_runtime_directory (int ,int *) ;
 int unit_log_result (int ,int,int ) ;
 int unit_remove_dependencies (int ,int ) ;
 int unit_unref_uid_gid (int ,int) ;

__attribute__((used)) static void mount_enter_dead(Mount *m, MountResult f) {
        assert(m);

        if (m->result == MOUNT_SUCCESS)
                m->result = f;

        unit_log_result(UNIT(m), m->result == MOUNT_SUCCESS, mount_result_to_string(m->result));
        mount_set_state(m, m->result != MOUNT_SUCCESS ? MOUNT_FAILED : MOUNT_DEAD);

        m->exec_runtime = exec_runtime_unref(m->exec_runtime, 1);

        unit_destroy_runtime_directory(UNIT(m), &m->exec_context);

        unit_unref_uid_gid(UNIT(m), 1);

        dynamic_creds_destroy(&m->dynamic_creds);


        unit_remove_dependencies(UNIT(m), UNIT_DEPENDENCY_MOUNTINFO_IMPLICIT);
}
