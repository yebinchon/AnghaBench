
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int resolve_query; int client_to_server_buffer; int server_to_client_buffer; int client_fd; int server_fd; int client_event_source; int server_event_source; TYPE_1__* context; } ;
struct TYPE_7__ {int connections; } ;
typedef TYPE_2__ Connection ;


 int assert (TYPE_2__*) ;
 int free (TYPE_2__*) ;
 int safe_close (int ) ;
 int safe_close_pair (int ) ;
 int sd_event_source_unref (int ) ;
 int sd_resolve_query_unref (int ) ;
 int set_remove (int ,TYPE_2__*) ;

__attribute__((used)) static void connection_free(Connection *c) {
        assert(c);

        if (c->context)
                set_remove(c->context->connections, c);

        sd_event_source_unref(c->server_event_source);
        sd_event_source_unref(c->client_event_source);

        safe_close(c->server_fd);
        safe_close(c->client_fd);

        safe_close_pair(c->server_to_client_buffer);
        safe_close_pair(c->client_to_server_buffer);

        sd_resolve_query_unref(c->resolve_query);

        free(c);
}
