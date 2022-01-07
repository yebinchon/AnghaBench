
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void const uint8_t ;
struct TYPE_3__ {scalar_t__ wire_format_rdata_offset; scalar_t__ wire_format_size; scalar_t__ wire_format; } ;
typedef TYPE_1__ DnsResourceRecord ;


 int assert (int) ;

__attribute__((used)) static inline const void* DNS_RESOURCE_RECORD_RDATA(const DnsResourceRecord *rr) {
        if (!rr)
                return ((void*)0);

        if (!rr->wire_format)
                return ((void*)0);

        assert(rr->wire_format_rdata_offset <= rr->wire_format_size);
        return (uint8_t*) rr->wire_format + rr->wire_format_rdata_offset;
}
