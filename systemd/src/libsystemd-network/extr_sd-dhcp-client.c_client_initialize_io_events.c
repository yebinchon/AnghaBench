
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int sd_event_io_handler_t ;
struct TYPE_7__ {int receive_message; int event_priority; int fd; struct TYPE_7__* event; } ;
typedef TYPE_1__ sd_dhcp_client ;


 int EPOLLIN ;
 int assert (TYPE_1__*) ;
 int client_stop (TYPE_1__*,int) ;
 int sd_event_add_io (TYPE_1__*,int *,int ,int ,int ,TYPE_1__*) ;
 int sd_event_source_set_description (int ,char*) ;
 int sd_event_source_set_priority (int ,int ) ;

__attribute__((used)) static int client_initialize_io_events(
                sd_dhcp_client *client,
                sd_event_io_handler_t io_callback) {

        int r;

        assert(client);
        assert(client->event);

        r = sd_event_add_io(client->event, &client->receive_message,
                            client->fd, EPOLLIN, io_callback,
                            client);
        if (r < 0)
                goto error;

        r = sd_event_source_set_priority(client->receive_message,
                                         client->event_priority);
        if (r < 0)
                goto error;

        r = sd_event_source_set_description(client->receive_message, "dhcp4-receive-message");
        if (r < 0)
                goto error;

error:
        if (r < 0)
                client_stop(client, r);

        return 0;
}
