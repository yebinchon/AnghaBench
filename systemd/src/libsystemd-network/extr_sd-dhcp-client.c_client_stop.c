
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_dhcp_client ;


 int SD_DHCP_CLIENT_EVENT_STOP ;
 int assert (int *) ;
 int client_initialize (int *) ;
 int client_notify (int *,int) ;
 int log_dhcp_client (int *,char*) ;
 int log_dhcp_client_errno (int *,int,char*) ;

__attribute__((used)) static void client_stop(sd_dhcp_client *client, int error) {
        assert(client);

        if (error < 0)
                log_dhcp_client_errno(client, error, "STOPPED: %m");
        else if (error == SD_DHCP_CLIENT_EVENT_STOP)
                log_dhcp_client(client, "STOPPED");
        else
                log_dhcp_client(client, "STOPPED: Unknown event");

        client_notify(client, error);

        client_initialize(client);
}
