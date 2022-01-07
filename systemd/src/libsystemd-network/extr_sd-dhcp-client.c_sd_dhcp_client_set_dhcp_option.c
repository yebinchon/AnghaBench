
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int option; int options; } ;
typedef TYPE_1__ sd_dhcp_option ;
typedef TYPE_1__ sd_dhcp_client ;


 int EINVAL ;
 int UINT_TO_PTR (int ) ;
 int assert_return (TYPE_1__*,int ) ;
 int dhcp_option_hash_ops ;
 int ordered_hashmap_ensure_allocated (int *,int *) ;
 int ordered_hashmap_put (int ,int ,TYPE_1__*) ;
 int sd_dhcp_option_ref (TYPE_1__*) ;

int sd_dhcp_client_set_dhcp_option(sd_dhcp_client *client, sd_dhcp_option *v) {
        int r;

        assert_return(client, -EINVAL);
        assert_return(v, -EINVAL);

        r = ordered_hashmap_ensure_allocated(&client->options, &dhcp_option_hash_ops);
        if (r < 0)
                return r;

        r = ordered_hashmap_put(client->options, UINT_TO_PTR(v->option), v);
        if (r < 0)
                return r;

        sd_dhcp_option_ref(v);
        return 0;
}
