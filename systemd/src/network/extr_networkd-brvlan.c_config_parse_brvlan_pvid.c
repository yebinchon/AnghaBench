
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int use_br_vlan; int pvid; } ;
typedef TYPE_1__ Network ;


 int parse_vlanid (char const*,int *) ;

int config_parse_brvlan_pvid(const char *unit, const char *filename,
                             unsigned line, const char *section,
                             unsigned section_line, const char *lvalue,
                             int ltype, const char *rvalue, void *data,
                             void *userdata) {
        Network *network = userdata;
        uint16_t pvid;
        int r;

        r = parse_vlanid(rvalue, &pvid);
        if (r < 0)
                return r;

        network->pvid = pvid;
        network->use_br_vlan = 1;

        return 0;
}
