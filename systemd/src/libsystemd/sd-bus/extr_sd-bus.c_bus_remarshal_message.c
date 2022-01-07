
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* header; } ;
typedef TYPE_2__ sd_bus_message ;
struct TYPE_11__ {scalar_t__ message_version; scalar_t__ message_endian; } ;
typedef TYPE_3__ sd_bus ;
struct TYPE_9__ {scalar_t__ version; scalar_t__ endian; } ;


 int assert (TYPE_3__*) ;
 int bus_message_remarshal (TYPE_3__*,TYPE_2__**) ;

__attribute__((used)) static int bus_remarshal_message(sd_bus *b, sd_bus_message **m) {
        bool remarshal = 0;

        assert(b);


        if (b->message_version != 0 && b->message_version != (*m)->header->version)
                remarshal = 1;


        if (b->message_endian != 0 && b->message_endian != (*m)->header->endian)
                remarshal = 1;

        return remarshal ? bus_message_remarshal(b, m) : 0;
}
