
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NLTypeSystem ;



 int const genl_type_system_root ;
 int const rtnl_type_system_root ;

const NLTypeSystem *type_system_get_root(int protocol) {
        switch (protocol) {
                case 128:
                        return &genl_type_system_root;
                default:
                        return &rtnl_type_system_root;
        }
}
