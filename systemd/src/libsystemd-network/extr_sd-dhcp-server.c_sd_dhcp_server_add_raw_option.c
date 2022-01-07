
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int raw_option; } ;
typedef TYPE_1__ sd_dhcp_server ;
typedef TYPE_1__ sd_dhcp_raw_option ;


 int EINVAL ;
 int ENOMEM ;
 int assert_return (TYPE_1__*,int ) ;
 int dhcp_raw_options_hash_ops ;
 int ordered_hashmap_ensure_allocated (int *,int *) ;
 int ordered_hashmap_put (int ,TYPE_1__*,TYPE_1__*) ;
 int sd_dhcp_raw_option_ref (TYPE_1__*) ;

int sd_dhcp_server_add_raw_option(sd_dhcp_server *server, sd_dhcp_raw_option *v) {
        int r;

        assert_return(server, -EINVAL);
        assert_return(v, -EINVAL);

        r = ordered_hashmap_ensure_allocated(&server->raw_option, &dhcp_raw_options_hash_ops);
        if (r < 0)
                return -ENOMEM;

        r = ordered_hashmap_put(server->raw_option, v, v);
        if (r < 0)
                return r;

        sd_dhcp_raw_option_ref(v);

        return 1;
}
