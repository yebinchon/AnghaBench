
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sd_bus_message ;
struct TYPE_3__ {scalar_t__ type; scalar_t__ read_only; int source; } ;
typedef TYPE_1__ CustomMount ;


 scalar_t__ CUSTOM_MOUNT_BIND ;
 int ENOENT ;
 int assert (int *) ;
 int bus_log_create_error (int) ;
 int is_device_node (int ) ;
 int log_debug_errno (int,char*,int ) ;
 int log_error_errno (int,char*,...) ;
 int sd_bus_message_append (int *,char*,char*,char*,...) ;

__attribute__((used)) static int append_machine_properties(
                sd_bus_message *m,
                CustomMount *mounts,
                unsigned n_mounts,
                int kill_signal) {

        unsigned j;
        int r;

        assert(m);

        r = sd_bus_message_append(m, "(sv)", "DevicePolicy", "s", "closed");
        if (r < 0)
                return bus_log_create_error(r);



        r = sd_bus_message_append(m, "(sv)", "DeviceAllow", "a(ss)", 2,






                                  "/dev/net/tun", "rwm",





                                  "char-pts", "rw");
        if (r < 0)
                return bus_log_create_error(r);

        for (j = 0; j < n_mounts; j++) {
                CustomMount *cm = mounts + j;

                if (cm->type != CUSTOM_MOUNT_BIND)
                        continue;

                r = is_device_node(cm->source);
                if (r == -ENOENT) {

                        log_debug_errno(r, "Bind mount source %s not found, ignoring: %m", cm->source);
                        continue;
                }
                if (r < 0)
                        return log_error_errno(r, "Failed to stat %s: %m", cm->source);

                if (r) {
                        r = sd_bus_message_append(m, "(sv)", "DeviceAllow", "a(ss)", 1,
                                                  cm->source, cm->read_only ? "r" : "rw");
                        if (r < 0)
                                return log_error_errno(r, "Failed to append message arguments: %m");
                }
        }

        if (kill_signal != 0) {
                r = sd_bus_message_append(m, "(sv)", "KillSignal", "i", kill_signal);
                if (r < 0)
                        return bus_log_create_error(r);

                r = sd_bus_message_append(m, "(sv)", "KillMode", "s", "mixed");
                if (r < 0)
                        return bus_log_create_error(r);
        }

        return 0;
}
