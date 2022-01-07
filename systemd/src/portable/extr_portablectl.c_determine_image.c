
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BUS_TRANSPORT_LOCAL ;
 int CHASE_NONEXISTENT ;
 int CHASE_TRAIL_SLASH ;
 int EOPNOTSUPP ;
 int F_OK ;
 int SYNTHETIC_ERRNO (int ) ;
 int arg_quiet ;
 scalar_t__ arg_transport ;
 int chase_symlinks (char const*,int *,int,char**,int *) ;
 scalar_t__ image_name_is_valid (char const*) ;
 scalar_t__ laccess (char const*,int ) ;
 int log_error_errno (int,char*,...) ;
 int log_oom () ;
 int log_warning (char*,char const*) ;
 char* strdup (char const*) ;

__attribute__((used)) static int determine_image(const char *image, bool permit_non_existing, char **ret) {
        int r;






        if (image_name_is_valid(image)) {
                char *c;

                if (!arg_quiet && laccess(image, F_OK) >= 0)
                        log_warning("Ambiguous invocation: current working directory contains file matching non-path argument '%s', ignoring. "
                                    "Prefix argument with './' to force reference to file in current working directory.", image);

                c = strdup(image);
                if (!c)
                        return log_oom();

                *ret = c;
                return 0;
        }

        if (arg_transport != BUS_TRANSPORT_LOCAL)
                return log_error_errno(SYNTHETIC_ERRNO(EOPNOTSUPP),
                                       "Operations on images by path not supported when connecting to remote systems.");

        r = chase_symlinks(image, ((void*)0), CHASE_TRAIL_SLASH | (permit_non_existing ? CHASE_NONEXISTENT : 0), ret, ((void*)0));
        if (r < 0)
                return log_error_errno(r, "Cannot normalize specified image path '%s': %m", image);

        return 0;
}
