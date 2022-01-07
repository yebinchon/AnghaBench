
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_container {scalar_t__ enclosing; size_t end; size_t begin; int * array_size; } ;
typedef int sd_bus_message ;


 size_t BUS_MESSAGE_BSWAP32 (int *,int ) ;
 scalar_t__ BUS_MESSAGE_IS_GVARIANT (int *) ;
 scalar_t__ SD_BUS_TYPE_ARRAY ;
 int assert (int *) ;
 struct bus_container* message_get_last_container (int *) ;

__attribute__((used)) static bool message_end_of_array(sd_bus_message *m, size_t index) {
        struct bus_container *c;

        assert(m);

        c = message_get_last_container(m);
        if (c->enclosing != SD_BUS_TYPE_ARRAY)
                return 0;

        if (BUS_MESSAGE_IS_GVARIANT(m))
                return index >= c->end;
        else {
                assert(c->array_size);
                return index >= c->begin + BUS_MESSAGE_BSWAP32(m, *c->array_size);
        }
}
