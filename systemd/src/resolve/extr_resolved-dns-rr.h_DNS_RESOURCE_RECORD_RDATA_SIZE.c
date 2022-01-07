
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ wire_format_rdata_offset; scalar_t__ wire_format_size; int wire_format; } ;
typedef TYPE_1__ DnsResourceRecord ;


 int assert (int) ;

__attribute__((used)) static inline size_t DNS_RESOURCE_RECORD_RDATA_SIZE(const DnsResourceRecord *rr) {
        if (!rr)
                return 0;
        if (!rr->wire_format)
                return 0;

        assert(rr->wire_format_rdata_offset <= rr->wire_format_size);
        return rr->wire_format_size - rr->wire_format_rdata_offset;
}
