
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bus_header {int dummy; } ;
struct TYPE_3__ {int fields_size; } ;
typedef TYPE_1__ sd_bus_message ;


 size_t ALIGN8 (int ) ;

__attribute__((used)) static inline size_t BUS_MESSAGE_BODY_BEGIN(sd_bus_message *m) {
        return
                sizeof(struct bus_header) +
                ALIGN8(m->fields_size);
}
