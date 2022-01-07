
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus ;


 int EINVAL ;
 int SYNTHETIC_ERRNO (int ) ;
 int log_error_errno (int ,char*,char const*) ;
 scalar_t__ path_equal (char const*,char*) ;
 int path_is_normalized (char const*) ;
 int stop_mount (int *,char const*,char*) ;

__attribute__((used)) static int stop_mounts(
                sd_bus *bus,
                const char *where) {

        int r;

        if (path_equal(where, "/"))
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL),
                                       "Refusing to operate on root directory: %s", where);

        if (!path_is_normalized(where))
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL),
                                       "Path contains non-normalized components: %s", where);

        r = stop_mount(bus, where, ".mount");
        if (r < 0)
                return r;

        r = stop_mount(bus, where, ".automount");
        if (r < 0)
                return r;

        return 0;
}
