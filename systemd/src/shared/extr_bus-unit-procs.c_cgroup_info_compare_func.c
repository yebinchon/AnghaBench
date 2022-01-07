
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CGroupInfo {int cgroup_path; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int cgroup_info_compare_func(struct CGroupInfo * const *a, struct CGroupInfo * const *b) {
        return strcmp((*a)->cgroup_path, (*b)->cgroup_path);
}
