
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int userdata; int (* callback ) (TYPE_1__*,int,int ) ;} ;
typedef TYPE_1__ sd_ipv4acd ;


 int assert (TYPE_1__*) ;
 int stub1 (TYPE_1__*,int,int ) ;

__attribute__((used)) static void ipv4acd_client_notify(sd_ipv4acd *acd, int event) {
        assert(acd);

        if (!acd->callback)
                return;

        acd->callback(acd, event, acd->userdata);
}
