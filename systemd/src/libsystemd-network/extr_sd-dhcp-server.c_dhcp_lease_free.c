
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int data; } ;
struct TYPE_8__ {TYPE_1__ client_id; } ;
typedef TYPE_2__ DHCPLease ;


 int free (int ) ;
 TYPE_2__* mfree (TYPE_2__*) ;

__attribute__((used)) static DHCPLease *dhcp_lease_free(DHCPLease *lease) {
        if (!lease)
                return ((void*)0);

        free(lease->client_id.data);
        return mfree(lease);
}
