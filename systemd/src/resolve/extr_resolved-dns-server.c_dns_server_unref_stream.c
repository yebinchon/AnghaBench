
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stream; } ;
typedef int DnsStream ;
typedef TYPE_1__ DnsServer ;


 int * TAKE_PTR (int ) ;
 int assert (TYPE_1__*) ;
 int dns_stream_unref (int *) ;

void dns_server_unref_stream(DnsServer *s) {
        DnsStream *ref;

        assert(s);




        ref = TAKE_PTR(s->stream);


        dns_stream_unref(ref);
}
