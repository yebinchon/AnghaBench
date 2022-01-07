
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ path_equal (char const*,char*) ;
 scalar_t__ path_startswith (char const*,char*) ;

__attribute__((used)) static bool nonunmountable_path(const char *path) {
        return path_equal(path, "/")

                || path_equal(path, "/usr")

                || path_startswith(path, "/run/initramfs");
}
