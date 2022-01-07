
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ protect_kernel_tunables; scalar_t__ protect_control_groups; scalar_t__ mount_apivfs; } ;
typedef TYPE_1__ NamespaceInfo ;


 int assert (TYPE_1__ const*) ;

__attribute__((used)) static bool namespace_info_mount_apivfs(const NamespaceInfo *ns_info) {
        assert(ns_info);







        return ns_info->mount_apivfs ||
                ns_info->protect_control_groups ||
                ns_info->protect_kernel_tunables;
}
