
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int client_to_server_buffer_size; int client_to_server_buffer; int server_to_client_buffer_size; int server_to_client_buffer; } ;
typedef TYPE_1__ Connection ;


 int assert (TYPE_1__*) ;
 int connection_create_pipes (TYPE_1__*,int ,int *) ;
 int connection_enable_event_sources (TYPE_1__*) ;
 int connection_free (TYPE_1__*) ;

__attribute__((used)) static int connection_complete(Connection *c) {
        int r;

        assert(c);

        r = connection_create_pipes(c, c->server_to_client_buffer, &c->server_to_client_buffer_size);
        if (r < 0)
                goto fail;

        r = connection_create_pipes(c, c->client_to_server_buffer, &c->client_to_server_buffer_size);
        if (r < 0)
                goto fail;

        r = connection_enable_event_sources(c);
        if (r < 0)
                goto fail;

        return 0;

fail:
        connection_free(c);
        return 0;
}
