
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int sd_bus_message ;


 scalar_t__ BUS_MESSAGE_IS_GVARIANT (int *) ;
 int EINVAL ;
 int ENOMEM ;
 int assert (int *) ;
 int* message_extend_fields (int *,int,int,int) ;

__attribute__((used)) static int message_append_field_uint32(sd_bus_message *m, uint64_t h, uint32_t x) {
        uint8_t *p;

        assert(m);


        if (h > 0xFF)
                return -EINVAL;

        if (BUS_MESSAGE_IS_GVARIANT(m)) {


                p = message_extend_fields(m, 8, 8 + 4 + 1 + 1, 1);
                if (!p)
                        return -ENOMEM;

                *((uint64_t*) p) = h;
                *((uint32_t*) (p + 8)) = x;
                p[12] = 0;
                p[13] = 'u';
        } else {

                p = message_extend_fields(m, 8, 4 + 4, 0);
                if (!p)
                        return -ENOMEM;

                p[0] = (uint8_t) h;
                p[1] = 1;
                p[2] = 'u';
                p[3] = 0;

                ((uint32_t*) p)[1] = x;
        }

        return 0;
}
