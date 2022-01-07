
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* stream; } ;
struct TYPE_5__ {TYPE_3__* server; } ;
typedef TYPE_1__ DnsStream ;


 int assert (TYPE_1__*) ;
 int dns_server_unref_stream (TYPE_3__*) ;

void dns_stream_detach(DnsStream *s) {
        assert(s);

        if (!s->server)
                return;

        if (s->server->stream != s)
                return;

        dns_server_unref_stream(s->server);
}
