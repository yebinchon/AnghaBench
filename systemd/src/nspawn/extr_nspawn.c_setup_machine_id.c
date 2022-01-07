
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_id128_t ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEDIUM ;
 int ID128_PLAIN ;
 int IN_SET (int,int ,int ) ;
 int SYNTHETIC_ERRNO (int ) ;
 int arg_uuid ;
 int id128_read (char const*,int ,int *) ;
 int log_error_errno (int,char*) ;
 char* prefix_roota (char const*,char*) ;
 scalar_t__ sd_id128_is_null (int ) ;
 int sd_id128_randomize (int *) ;

__attribute__((used)) static int setup_machine_id(const char *directory) {
        const char *etc_machine_id;
        sd_id128_t id;
        int r;
        etc_machine_id = prefix_roota(directory, "/etc/machine-id");

        r = id128_read(etc_machine_id, ID128_PLAIN, &id);
        if (r < 0) {
                if (!IN_SET(r, -ENOENT, -ENOMEDIUM))
                        return log_error_errno(r, "Failed to read machine ID from container image: %m");

                if (sd_id128_is_null(arg_uuid)) {
                        r = sd_id128_randomize(&arg_uuid);
                        if (r < 0)
                                return log_error_errno(r, "Failed to acquire randomized machine UUID: %m");
                }
        } else {
                if (sd_id128_is_null(id))
                        return log_error_errno(SYNTHETIC_ERRNO(EINVAL),
                                               "Machine ID in container image is zero, refusing.");

                arg_uuid = id;
        }

        return 0;
}
