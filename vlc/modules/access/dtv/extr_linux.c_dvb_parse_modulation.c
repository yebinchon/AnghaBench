
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mods ;
struct TYPE_3__ {char* member_0; int member_1; } ;
typedef TYPE_1__ dvb_str_map_t ;
 int dvb_parse_str (char const*,TYPE_1__ const*,int,int) ;

__attribute__((used)) static int dvb_parse_modulation (const char *str, int def)
{
    static const dvb_str_map_t mods[] =
    {
        { "128QAM", 136 },
        { "16APSK", 140 },
        { "16QAM", 135 },
        { "16VSB", 129 },
        { "256QAM", 134 },
        { "32APSK", 139 },
        { "32QAM", 133 },
        { "64QAM", 132 },
        { "8PSK", 137 },
        { "8VSB", 128 },
        { "DQPSK", 138 },
        { "QAM", 131 },
        { "QPSK", 130 },
    };
    return dvb_parse_str (str, mods, sizeof (mods) / sizeof (*mods), def);
}
