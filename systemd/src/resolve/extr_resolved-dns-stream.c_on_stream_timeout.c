
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
typedef int sd_event_source ;
typedef int DnsStream ;


 int ETIMEDOUT ;
 int assert (int *) ;
 int dns_stream_complete (int *,int ) ;

__attribute__((used)) static int on_stream_timeout(sd_event_source *es, usec_t usec, void *userdata) {
        DnsStream *s = userdata;

        assert(s);

        return dns_stream_complete(s, ETIMEDOUT);
}
