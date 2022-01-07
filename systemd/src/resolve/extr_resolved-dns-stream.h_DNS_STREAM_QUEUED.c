
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fd; int write_packet; } ;
typedef TYPE_1__ DnsStream ;


 int assert (TYPE_1__*) ;

__attribute__((used)) static inline bool DNS_STREAM_QUEUED(DnsStream *s) {
        assert(s);

        if (s->fd < 0)
                return 0;

        return !!s->write_packet;
}
