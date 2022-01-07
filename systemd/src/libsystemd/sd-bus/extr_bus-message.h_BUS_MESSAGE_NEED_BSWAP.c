
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* header; } ;
typedef TYPE_2__ sd_bus_message ;
struct TYPE_4__ {scalar_t__ endian; } ;


 scalar_t__ BUS_NATIVE_ENDIAN ;

__attribute__((used)) static inline bool BUS_MESSAGE_NEED_BSWAP(sd_bus_message *m) {
        return m->header->endian != BUS_NATIVE_ENDIAN;
}
