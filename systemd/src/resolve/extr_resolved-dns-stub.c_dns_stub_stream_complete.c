
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int queries; } ;
typedef TYPE_1__ DnsStream ;
typedef int DnsQuery ;


 int assert (TYPE_1__*) ;
 int dns_query_free (int *) ;
 int dns_stream_unref (TYPE_1__*) ;
 int log_debug_errno (int,char*) ;
 int * set_first (int ) ;

__attribute__((used)) static int dns_stub_stream_complete(DnsStream *s, int error) {
        assert(s);

        log_debug_errno(error, "DNS TCP connection terminated, destroying queries: %m");

        for (;;) {
                DnsQuery *q;

                q = set_first(s->queries);
                if (!q)
                        break;

                dns_query_free(q);
        }



        dns_stream_unref(s);
        return 0;
}
