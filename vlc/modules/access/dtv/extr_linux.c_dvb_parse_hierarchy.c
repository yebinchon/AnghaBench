
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tab ;
struct TYPE_3__ {int member_1; int member_0; } ;
typedef TYPE_1__ dvb_int_map_t ;







 int dvb_parse_int (int,TYPE_1__ const*,int,int const) ;

__attribute__((used)) static int dvb_parse_hierarchy (int i)
{
    static const dvb_int_map_t tab[] = {
        { 129, -1 },
        { 128, 0 },
        { 132, 1 },
        { 131, 2 },
        { 130, 4 },
    };
    return dvb_parse_int (i, tab, sizeof (tab) / sizeof (*tab),
                          129);
}
