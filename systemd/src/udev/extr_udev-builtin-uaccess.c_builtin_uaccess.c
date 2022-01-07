
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int sd_device ;


 int ENODATA ;
 int ENOENT ;
 int ENXIO ;
 scalar_t__ IN_SET (int,int ,int ) ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int devnode_acl (char const*,int,int,int ,int,int ) ;
 int log_device_error_errno (int *,int,char*,...) ;
 int log_device_full (int *,int ,int,char*) ;
 int logind_running () ;
 int sd_device_get_devname (int *,char const**) ;
 scalar_t__ sd_device_get_property_value (int *,char*,char const**) ;
 int sd_seat_get_active (char const*,int *,int *) ;
 int umask (int) ;

__attribute__((used)) static int builtin_uaccess(sd_device *dev, int argc, char *argv[], bool test) {
        const char *path = ((void*)0), *seat;
        bool changed_acl = 0;
        uid_t uid;
        int r;

        umask(0022);


        if (!logind_running())
                return 0;

        r = sd_device_get_devname(dev, &path);
        if (r < 0) {
                log_device_error_errno(dev, r, "Failed to get device name: %m");
                goto finish;
        }

        if (sd_device_get_property_value(dev, "ID_SEAT", &seat) < 0)
                seat = "seat0";

        r = sd_seat_get_active(seat, ((void*)0), &uid);
        if (r < 0) {
                if (IN_SET(r, -ENXIO, -ENODATA))

                        r = 0;
                else
                        log_device_error_errno(dev, r, "Failed to determine active user on seat %s: %m", seat);

                goto finish;
        }

        r = devnode_acl(path, 1, 0, 0, 1, uid);
        if (r < 0) {
                log_device_full(dev, r == -ENOENT ? LOG_DEBUG : LOG_ERR, r, "Failed to apply ACL: %m");
                goto finish;
        }

        changed_acl = 1;
        r = 0;

finish:
        if (path && !changed_acl) {
                int k;


                k = devnode_acl(path, 1, 0, 0, 0, 0);
                if (k < 0) {
                        log_device_full(dev, k == -ENOENT ? LOG_DEBUG : LOG_ERR, k, "Failed to apply ACL: %m");
                        if (r >= 0)
                                r = k;
                }
        }

        return r;
}
