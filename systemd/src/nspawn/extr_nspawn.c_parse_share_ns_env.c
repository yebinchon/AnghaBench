
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENXIO ;
 int SETTING_CLONE_NS_FLAGS ;
 unsigned long arg_clone_ns_flags ;
 int arg_settings_mask ;
 int getenv_bool (char const*) ;
 int log_error_errno (int,char*,char const*) ;

__attribute__((used)) static int parse_share_ns_env(const char *name, unsigned long ns_flag) {
        int r;

        r = getenv_bool(name);
        if (r == -ENXIO)
                return 0;
        if (r < 0)
                return log_error_errno(r, "Failed to parse $%s: %m", name);

        arg_clone_ns_flags = (arg_clone_ns_flags & ~ns_flag) | (r > 0 ? 0 : ns_flag);
        arg_settings_mask |= SETTING_CLONE_NS_FLAGS;
        return 0;
}
