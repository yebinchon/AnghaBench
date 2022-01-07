
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void uint8_t ;
struct bus_header {int dummy; } ;
struct TYPE_3__ {scalar_t__ header; } ;
typedef TYPE_1__ sd_bus_message ;



__attribute__((used)) static inline void* BUS_MESSAGE_FIELDS(sd_bus_message *m) {
        return (uint8_t*) m->header + sizeof(struct bus_header);
}
