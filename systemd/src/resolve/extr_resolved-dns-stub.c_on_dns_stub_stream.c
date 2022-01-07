
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int sd_event_source ;
struct TYPE_3__ {int complete; int on_packet; } ;
typedef int Manager ;
typedef TYPE_1__ DnsStream ;


 int DNS_PROTOCOL_DNS ;
 int DNS_STREAM_STUB ;
 scalar_t__ ERRNO_IS_ACCEPT_AGAIN (int) ;
 int SOCK_CLOEXEC ;
 int SOCK_NONBLOCK ;
 int accept4 (int,int *,int *,int) ;
 int dns_stream_new (int *,TYPE_1__**,int ,int ,int,int *) ;
 int dns_stub_stream_complete ;
 int errno ;
 int on_dns_stub_stream_packet ;
 int safe_close (int) ;

__attribute__((used)) static int on_dns_stub_stream(sd_event_source *s, int fd, uint32_t revents, void *userdata) {
        DnsStream *stream;
        Manager *m = userdata;
        int cfd, r;

        cfd = accept4(fd, ((void*)0), ((void*)0), SOCK_NONBLOCK|SOCK_CLOEXEC);
        if (cfd < 0) {
                if (ERRNO_IS_ACCEPT_AGAIN(errno))
                        return 0;

                return -errno;
        }

        r = dns_stream_new(m, &stream, DNS_STREAM_STUB, DNS_PROTOCOL_DNS, cfd, ((void*)0));
        if (r < 0) {
                safe_close(cfd);
                return r;
        }

        stream->on_packet = on_dns_stub_stream_packet;
        stream->complete = dns_stub_stream_complete;



        return 0;
}
