
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CGroupController ;


 scalar_t__ IN_SET (char const,int ,char,char) ;
 scalar_t__ STR_IN_SET (char const*,char*,char*,char*) ;
 scalar_t__ _CGROUP_CONTROLLER_MAX ;
 char* cgroup_controller_to_string (scalar_t__) ;
 scalar_t__ memcmp (char const*,char const*,size_t) ;
 scalar_t__ startswith (char const*,char*) ;
 char* strdup (char const*) ;
 char* strjoin (char*,char const*) ;
 size_t strlen (char const*) ;
 char* strrchr (char const*,char) ;

char *cg_escape(const char *p) {
        bool need_prefix = 0;
        if (IN_SET(p[0], 0, '_', '.') ||
            STR_IN_SET(p, "notify_on_release", "release_agent", "tasks") ||
            startswith(p, "cgroup."))
                need_prefix = 1;
        else {
                const char *dot;

                dot = strrchr(p, '.');
                if (dot) {
                        CGroupController c;
                        size_t l = dot - p;

                        for (c = 0; c < _CGROUP_CONTROLLER_MAX; c++) {
                                const char *n;

                                n = cgroup_controller_to_string(c);

                                if (l != strlen(n))
                                        continue;

                                if (memcmp(p, n, l) != 0)
                                        continue;

                                need_prefix = 1;
                                break;
                        }
                }
        }

        if (need_prefix)
                return strjoin("_", p);

        return strdup(p);
}
