
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_dhcp_client ;
typedef int DHCPMessage ;


 int DHCP_FORCERENEW ;
 int ENOMSG ;
 int dhcp_option_parse (int *,size_t,int *,int *,int *) ;
 int log_dhcp_client (int *,char*) ;

__attribute__((used)) static int client_handle_forcerenew(sd_dhcp_client *client, DHCPMessage *force, size_t len) {
        int r;

        r = dhcp_option_parse(force, len, ((void*)0), ((void*)0), ((void*)0));
        if (r != DHCP_FORCERENEW)
                return -ENOMSG;

        log_dhcp_client(client, "FORCERENEW");

        return 0;
}
