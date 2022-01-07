
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ detect_container () ;
 int empty_or_root (char const*) ;

__attribute__((used)) static bool is_root_cgroup(const char *path) {
        if (detect_container() > 0)
                return 0;

        return empty_or_root(path);
}
