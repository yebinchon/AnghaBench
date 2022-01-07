
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int linux_; } ;
typedef TYPE_1__ dvb_str_map_t ;


 TYPE_1__* bsearch (char const*,TYPE_1__ const*,size_t,int,int ) ;
 int scmp ;

__attribute__((used)) static int dvb_parse_str (const char *str, const dvb_str_map_t *map, size_t n,
                          int def)
{
    if (str != ((void*)0))
    {
        const dvb_str_map_t *p = bsearch (str, map, n, sizeof (*map), scmp);
        if (p != ((void*)0))
            def = p->linux_;
    }
    return def;
}
