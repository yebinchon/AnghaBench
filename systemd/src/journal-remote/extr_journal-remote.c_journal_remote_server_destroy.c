
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t sources_size; int events; int listen_event; int sigint_event; int sigterm_event; int writers; int _single_writer; scalar_t__ sources; int daemons; } ;
typedef TYPE_1__ RemoteServer ;


 int MHDDaemonWrapper_free ;
 int assert (int) ;
 int free (scalar_t__) ;
 int hashmap_free (int ) ;
 int hashmap_free_with_destructor (int ,int ) ;
 TYPE_1__* journal_remote_server_global ;
 int remove_source (TYPE_1__*,size_t) ;
 int sd_event_source_unref (int ) ;
 int sd_event_unref (int ) ;
 int writer_unref (int ) ;

void journal_remote_server_destroy(RemoteServer *s) {
        size_t i;





        assert(s->sources_size == 0 || s->sources);
        for (i = 0; i < s->sources_size; i++)
                remove_source(s, i);
        free(s->sources);

        writer_unref(s->_single_writer);
        hashmap_free(s->writers);

        sd_event_source_unref(s->sigterm_event);
        sd_event_source_unref(s->sigint_event);
        sd_event_source_unref(s->listen_event);
        sd_event_unref(s->events);

        if (s == journal_remote_server_global)
                journal_remote_server_global = ((void*)0);


}
