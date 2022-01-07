
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int types; } ;
struct TYPE_8__ {int types; } ;
struct TYPE_10__ {TYPE_3__ nsec3; TYPE_2__ nsec; TYPE_1__* key; } ;
struct TYPE_7__ {int type; } ;
typedef TYPE_4__ DnsResourceRecord ;


 int DNS_TYPE_NS ;


 int DNS_TYPE_SOA ;
 int assert (TYPE_4__*) ;
 int bitmap_isset (int ,int ) ;

__attribute__((used)) static bool rr_eligible(DnsResourceRecord *rr) {
        assert(rr);





        switch (rr->key->type) {

        case 129:
                return !bitmap_isset(rr->nsec.types, DNS_TYPE_NS) ||
                        bitmap_isset(rr->nsec.types, DNS_TYPE_SOA);

        case 128:
                return !bitmap_isset(rr->nsec3.types, DNS_TYPE_NS) ||
                        bitmap_isset(rr->nsec3.types, DNS_TYPE_SOA);

        default:
                return 1;
        }
}
