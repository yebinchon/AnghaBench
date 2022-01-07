
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ gnutls_transport_ptr_t ;
typedef int giovec_t ;
typedef int DnsStream ;


 int DNS_STREAM_WRITE_TLS_DATA ;
 int assert (scalar_t__) ;
 int dns_stream_writev (int *,struct iovec const*,int,int ) ;
 int errno ;

__attribute__((used)) static ssize_t dnstls_stream_writev(gnutls_transport_ptr_t p, const giovec_t *iov, int iovcnt) {
        int r;

        assert(p);

        r = dns_stream_writev((DnsStream*) p, (const struct iovec*) iov, iovcnt, DNS_STREAM_WRITE_TLS_DATA);
        if (r < 0) {
                errno = -r;
                return -1;
        }

        return r;
}
