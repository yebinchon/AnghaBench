
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CLONE_NEWCGROUP ;
 unsigned long CLONE_NEWNET ;
 unsigned long CLONE_NEWUSER ;
 scalar_t__ USER_NAMESPACE_NO ;
 unsigned long arg_clone_ns_flags ;
 scalar_t__ arg_private_network ;
 scalar_t__ arg_use_cgns ;
 scalar_t__ arg_userns_mode ;

__attribute__((used)) static unsigned long effective_clone_ns_flags(void) {
        unsigned long flags = arg_clone_ns_flags;

        if (arg_private_network)
                flags |= CLONE_NEWNET;
        if (arg_use_cgns)
                flags |= CLONE_NEWCGROUP;
        if (arg_userns_mode != USER_NAMESPACE_NO)
                flags |= CLONE_NEWUSER;

        return flags;
}
