
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int userdata; int (* callback ) (TYPE_1__*,int,int ) ;} ;
typedef TYPE_1__ sd_ipv4ll ;


 int assert (TYPE_1__*) ;
 int stub1 (TYPE_1__*,int,int ) ;

__attribute__((used)) static void ipv4ll_client_notify(sd_ipv4ll *ll, int event) {
        assert(ll);

        if (ll->callback)
                ll->callback(ll, event, ll->userdata);
}
