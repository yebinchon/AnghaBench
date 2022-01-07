
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char const Unit ;
struct TYPE_3__ {scalar_t__ exec_command; scalar_t__ control_command; scalar_t__ control_command_id; int control_pid; int n_retry_umount; scalar_t__ reload_result; scalar_t__ result; int deserialized_state; } ;
typedef int MountState ;
typedef scalar_t__ MountResult ;
typedef scalar_t__ MountExecCommand ;
typedef TYPE_1__ Mount ;
typedef char const FDSet ;


 TYPE_1__* MOUNT (char const*) ;
 scalar_t__ MOUNT_SUCCESS ;
 int assert (char const*) ;
 int log_unit_debug (char const*,char*,char const*) ;
 scalar_t__ mount_exec_command_from_string (char const*) ;
 scalar_t__ mount_result_from_string (char const*) ;
 int mount_state_from_string (char const*) ;
 scalar_t__ parse_pid (char const*,int *) ;
 int safe_atou (char const*,int *) ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static int mount_deserialize_item(Unit *u, const char *key, const char *value, FDSet *fds) {
        Mount *m = MOUNT(u);
        int r;

        assert(u);
        assert(key);
        assert(value);
        assert(fds);

        if (streq(key, "state")) {
                MountState state;

                if ((state = mount_state_from_string(value)) < 0)
                        log_unit_debug(u, "Failed to parse state value: %s", value);
                else
                        m->deserialized_state = state;

        } else if (streq(key, "result")) {
                MountResult f;

                f = mount_result_from_string(value);
                if (f < 0)
                        log_unit_debug(u, "Failed to parse result value: %s", value);
                else if (f != MOUNT_SUCCESS)
                        m->result = f;

        } else if (streq(key, "reload-result")) {
                MountResult f;

                f = mount_result_from_string(value);
                if (f < 0)
                        log_unit_debug(u, "Failed to parse reload result value: %s", value);
                else if (f != MOUNT_SUCCESS)
                        m->reload_result = f;

        } else if (streq(key, "n-retry-umount")) {

                r = safe_atou(value, &m->n_retry_umount);
                if (r < 0)
                        log_unit_debug(u, "Failed to parse n-retry-umount value: %s", value);

        } else if (streq(key, "control-pid")) {

                if (parse_pid(value, &m->control_pid) < 0)
                        log_unit_debug(u, "Failed to parse control-pid value: %s", value);

        } else if (streq(key, "control-command")) {
                MountExecCommand id;

                id = mount_exec_command_from_string(value);
                if (id < 0)
                        log_unit_debug(u, "Failed to parse exec-command value: %s", value);
                else {
                        m->control_command_id = id;
                        m->control_command = m->exec_command + id;
                }
        } else
                log_unit_debug(u, "Unknown serialization key: %s", key);

        return 0;
}
