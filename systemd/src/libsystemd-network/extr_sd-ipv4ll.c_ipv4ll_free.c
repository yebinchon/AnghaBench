
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int acd; } ;
typedef TYPE_1__ sd_ipv4ll ;


 int assert (TYPE_1__*) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int sd_ipv4acd_unref (int ) ;

__attribute__((used)) static sd_ipv4ll *ipv4ll_free(sd_ipv4ll *ll) {
        assert(ll);

        sd_ipv4acd_unref(ll->acd);
        return mfree(ll);
}
