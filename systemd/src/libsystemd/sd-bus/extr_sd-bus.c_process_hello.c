
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ state; int reply_cookie; TYPE_1__* header; } ;
typedef TYPE_2__ sd_bus_message ;
typedef TYPE_2__ sd_bus ;
struct TYPE_7__ {int type; } ;


 scalar_t__ BUS_HELLO ;
 int EIO ;
 int IN_SET (int ,int ,int ) ;
 int SD_BUS_MESSAGE_METHOD_ERROR ;
 int SD_BUS_MESSAGE_METHOD_RETURN ;
 int assert (TYPE_2__*) ;

__attribute__((used)) static int process_hello(sd_bus *bus, sd_bus_message *m) {
        assert(bus);
        assert(m);

        if (bus->state != BUS_HELLO)
                return 0;






        if (!IN_SET(m->header->type, SD_BUS_MESSAGE_METHOD_RETURN, SD_BUS_MESSAGE_METHOD_ERROR))
                return -EIO;

        if (m->reply_cookie != 1)
                return -EIO;

        return 0;
}
