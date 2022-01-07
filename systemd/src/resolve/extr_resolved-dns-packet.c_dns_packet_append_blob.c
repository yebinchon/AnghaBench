
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DnsPacket ;


 int assert (int *) ;
 int dns_packet_extend (int *,size_t,void**,size_t*) ;
 int memcpy_safe (void*,void const*,size_t) ;

int dns_packet_append_blob(DnsPacket *p, const void *d, size_t l, size_t *start) {
        void *q;
        int r;

        assert(p);

        r = dns_packet_extend(p, l, &q, start);
        if (r < 0)
                return r;

        memcpy_safe(q, d, l);
        return 0;
}
