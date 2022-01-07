
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int rcode; } ;
typedef TYPE_1__ DnsCacheItem ;






 int assert (TYPE_1__*) ;
 char const* dns_rcode_to_string (int ) ;

__attribute__((used)) static const char *dns_cache_item_type_to_string(DnsCacheItem *item) {
        assert(item);

        switch (item->type) {

        case 129:
                return "POSITIVE";

        case 131:
                return "NODATA";

        case 130:
                return "NXDOMAIN";

        case 128:
                return dns_rcode_to_string(item->rcode);
        }

        return ((void*)0);
}
