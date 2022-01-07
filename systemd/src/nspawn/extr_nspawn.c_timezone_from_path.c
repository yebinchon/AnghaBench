
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* PATH_STARTSWITH_SET (char const*,char*,char*) ;

__attribute__((used)) static const char *timezone_from_path(const char *path) {
        return PATH_STARTSWITH_SET(
                        path,
                        "../usr/share/zoneinfo/",
                        "/usr/share/zoneinfo/");
}
