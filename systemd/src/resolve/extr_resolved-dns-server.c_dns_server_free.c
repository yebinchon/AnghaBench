
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int server_string; } ;
typedef TYPE_1__ DnsServer ;


 int assert (TYPE_1__*) ;
 int dns_server_unref_stream (TYPE_1__*) ;
 int dnstls_server_free (TYPE_1__*) ;
 int free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;

__attribute__((used)) static DnsServer* dns_server_free(DnsServer *s) {
        assert(s);

        dns_server_unref_stream(s);





        free(s->server_string);
        return mfree(s);
}
