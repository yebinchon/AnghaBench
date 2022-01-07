
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int linux_; } ;
typedef TYPE_1__ dvb_int_map_t ;


 TYPE_1__* bsearch (int*,TYPE_1__ const*,size_t,int,int ) ;
 int icmp ;

__attribute__((used)) static int dvb_parse_int (int i, const dvb_int_map_t *map, size_t n, int def)
{
    const dvb_int_map_t *p = bsearch(&i, map, n, sizeof (*map), icmp);
    return (p != ((void*)0)) ? p->linux_ : def;
}
