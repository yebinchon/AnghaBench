
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ n_stdout_streams; int stdout_streams_notify_queue; int stdout_streams; } ;
struct TYPE_6__ {struct TYPE_6__* buffer; struct TYPE_6__* state_file; struct TYPE_6__* unit_id; struct TYPE_6__* identifier; struct TYPE_6__* label; int fd; scalar_t__ event_source; TYPE_4__* server; scalar_t__ in_notify_queue; scalar_t__ context; } ;
typedef TYPE_1__ StdoutStream ;


 int LIST_REMOVE (int ,int ,TYPE_1__*) ;
 int SD_EVENT_OFF ;
 int assert (int) ;
 int client_context_release (TYPE_4__*,scalar_t__) ;
 int free (TYPE_1__*) ;
 int safe_close (int ) ;
 int sd_event_source_set_enabled (scalar_t__,int ) ;
 scalar_t__ sd_event_source_unref (scalar_t__) ;
 int stdout_stream ;
 int stdout_stream_notify_queue ;

void stdout_stream_free(StdoutStream *s) {
        if (!s)
                return;

        if (s->server) {

                if (s->context)
                        client_context_release(s->server, s->context);

                assert(s->server->n_stdout_streams > 0);
                s->server->n_stdout_streams--;
                LIST_REMOVE(stdout_stream, s->server->stdout_streams, s);

                if (s->in_notify_queue)
                        LIST_REMOVE(stdout_stream_notify_queue, s->server->stdout_streams_notify_queue, s);
        }

        if (s->event_source) {
                sd_event_source_set_enabled(s->event_source, SD_EVENT_OFF);
                s->event_source = sd_event_source_unref(s->event_source);
        }

        safe_close(s->fd);
        free(s->label);
        free(s->identifier);
        free(s->unit_id);
        free(s->state_file);
        free(s->buffer);

        free(s);
}
