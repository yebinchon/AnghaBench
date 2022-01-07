
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int cg_enumerate_items (char const*,char const*,int **,char*) ;

int cg_enumerate_processes(const char *controller, const char *path, FILE **_f) {
        return cg_enumerate_items(controller, path, _f, "cgroup.procs");
}
