
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vendor_class_identifier; } ;
typedef TYPE_1__ sd_dhcp_client ;


 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;
 int free_and_strdup (int *,char const*) ;

int sd_dhcp_client_set_vendor_class_identifier(
                sd_dhcp_client *client,
                const char *vci) {

        assert_return(client, -EINVAL);

        return free_and_strdup(&client->vendor_class_identifier, vci);
}
