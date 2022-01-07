
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int unit_file_scope; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef scalar_t__ UnitFilePresetMode ;
typedef int UnitFileFlags ;
typedef int UnitFileChange ;
typedef TYPE_1__ Manager ;


 int EINVAL ;
 scalar_t__ UNIT_FILE_PRESET_FULL ;
 int assert (TYPE_1__*) ;
 int bus_verify_manage_unit_files_async (TYPE_1__*,TYPE_1__*,int *) ;
 int install_error (int *,int,int *,size_t) ;
 scalar_t__ isempty (char const*) ;
 int mac_selinux_access_check (TYPE_1__*,char*,int *) ;
 int reply_unit_file_changes_and_free (TYPE_1__*,TYPE_1__*,int,int *,size_t,int *) ;
 int sd_bus_message_read (TYPE_1__*,char*,char const**,int*,int*) ;
 int unit_file_bools_to_flags (int,int) ;
 int unit_file_preset_all (int ,int ,int *,scalar_t__,int **,size_t*) ;
 scalar_t__ unit_file_preset_mode_from_string (char const*) ;

__attribute__((used)) static int method_preset_all_unit_files(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        UnitFileChange *changes = ((void*)0);
        size_t n_changes = 0;
        Manager *m = userdata;
        UnitFilePresetMode mm;
        const char *mode;
        UnitFileFlags flags;
        int force, runtime, r;

        assert(message);
        assert(m);

        r = mac_selinux_access_check(message, "enable", error);
        if (r < 0)
                return r;

        r = sd_bus_message_read(message, "sbb", &mode, &runtime, &force);
        if (r < 0)
                return r;

        flags = unit_file_bools_to_flags(runtime, force);

        if (isempty(mode))
                mm = UNIT_FILE_PRESET_FULL;
        else {
                mm = unit_file_preset_mode_from_string(mode);
                if (mm < 0)
                        return -EINVAL;
        }

        r = bus_verify_manage_unit_files_async(m, message, error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        r = unit_file_preset_all(m->unit_file_scope, flags, ((void*)0), mm, &changes, &n_changes);
        if (r < 0)
                return install_error(error, r, changes, n_changes);

        return reply_unit_file_changes_and_free(m, message, -1, changes, n_changes, error);
}
