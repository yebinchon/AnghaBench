
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ssl; } ;
struct TYPE_6__ {TYPE_1__ dnstls_data; struct TYPE_6__* encrypted; } ;
typedef TYPE_2__ DnsStream ;


 int SSL_free (scalar_t__) ;
 int assert (TYPE_2__*) ;

void dnstls_stream_free(DnsStream *stream) {
        assert(stream);
        assert(stream->encrypted);

        if (stream->dnstls_data.ssl)
                SSL_free(stream->dnstls_data.ssl);
}
