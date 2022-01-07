
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; void* timeout_event_source; void* io_event_source; } ;
typedef TYPE_1__ DnsStream ;


 int assert (TYPE_1__*) ;
 int dns_stream_detach (TYPE_1__*) ;
 int safe_close (int ) ;
 void* sd_event_source_unref (void*) ;

__attribute__((used)) static void dns_stream_stop(DnsStream *s) {
        assert(s);

        s->io_event_source = sd_event_source_unref(s->io_event_source);
        s->timeout_event_source = sd_event_source_unref(s->timeout_event_source);
        s->fd = safe_close(s->fd);


        dns_stream_detach(s);
}
