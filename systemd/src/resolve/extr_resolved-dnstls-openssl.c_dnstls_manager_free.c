
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ctx; } ;
struct TYPE_6__ {TYPE_1__ dnstls_data; } ;
typedef TYPE_2__ Manager ;


 int SSL_CTX_free (scalar_t__) ;
 int assert (TYPE_2__*) ;

void dnstls_manager_free(Manager *manager) {
        assert(manager);

        if (manager->dnstls_data.ctx)
                SSL_CTX_free(manager->dnstls_data.ctx);
}
