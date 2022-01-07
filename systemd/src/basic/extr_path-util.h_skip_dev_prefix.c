
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* path_startswith (char const*,char*) ;

__attribute__((used)) static inline const char *skip_dev_prefix(const char *p) {
        const char *e;



        e = path_startswith(p, "/dev/");

        return e ?: p;
}
