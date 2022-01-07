
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_4__ {int fd; scalar_t__ encrypted; } ;
typedef TYPE_1__ DnsStream ;


 scalar_t__ dnstls_stream_read (TYPE_1__*,void*,size_t) ;
 scalar_t__ errno ;
 scalar_t__ read (int ,void*,size_t) ;

__attribute__((used)) static ssize_t dns_stream_read(DnsStream *s, void *buf, size_t count) {
        ssize_t ss;






        {
                ss = read(s->fd, buf, count);
                if (ss < 0)
                        return -errno;
        }

        return ss;
}
