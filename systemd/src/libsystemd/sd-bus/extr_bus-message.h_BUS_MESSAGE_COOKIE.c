
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_11__ {TYPE_3__* header; } ;
typedef TYPE_4__ sd_bus_message ;
struct TYPE_9__ {int serial; } ;
struct TYPE_8__ {int cookie; } ;
struct TYPE_10__ {int version; TYPE_2__ dbus1; TYPE_1__ dbus2; } ;


 int BUS_MESSAGE_BSWAP32 (TYPE_4__*,int ) ;
 int BUS_MESSAGE_BSWAP64 (TYPE_4__*,int ) ;

__attribute__((used)) static inline uint64_t BUS_MESSAGE_COOKIE(sd_bus_message *m) {
        if (m->header->version == 2)
                return BUS_MESSAGE_BSWAP64(m, m->header->dbus2.cookie);

        return BUS_MESSAGE_BSWAP32(m, m->header->dbus1.serial);
}
