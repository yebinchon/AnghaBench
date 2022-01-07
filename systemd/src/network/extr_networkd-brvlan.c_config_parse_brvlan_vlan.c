
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_2__ {int use_br_vlan; int br_vid_bitmap; } ;
typedef TYPE_1__ Network ;


 int LOG_ERR ;
 int assert (void*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int,char*,char const*) ;
 int parse_vid_range (char const*,scalar_t__*,scalar_t__*) ;
 int set_bit (scalar_t__,int ) ;

int config_parse_brvlan_vlan(const char *unit, const char *filename,
                             unsigned line, const char *section,
                             unsigned section_line, const char *lvalue,
                             int ltype, const char *rvalue, void *data,
                             void *userdata) {
        Network *network = userdata;
        uint16_t vid, vid_end;
        int r;

        assert(filename);
        assert(section);
        assert(lvalue);
        assert(rvalue);
        assert(data);

        r = parse_vid_range(rvalue, &vid, &vid_end);
        if (r < 0) {
                log_syntax(unit, LOG_ERR, filename, line, r, "Failed to parse VLAN, ignoring: %s", rvalue);
                return 0;
        }

        for (; vid <= vid_end; vid++)
                set_bit(vid, network->br_vid_bitmap);

        network->use_br_vlan = 1;
        return 0;
}
