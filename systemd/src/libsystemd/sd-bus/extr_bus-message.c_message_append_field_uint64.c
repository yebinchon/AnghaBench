
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint64_t ;
typedef int sd_bus_message ;


 scalar_t__ BUS_MESSAGE_IS_GVARIANT (int *) ;
 int EINVAL ;
 int ENOMEM ;
 int assert (int *) ;
 char* message_extend_fields (int *,int,int,int) ;

__attribute__((used)) static int message_append_field_uint64(sd_bus_message *m, uint64_t h, uint64_t x) {
        uint8_t *p;

        assert(m);


        if (h > 0xFF)
                return -EINVAL;

        if (BUS_MESSAGE_IS_GVARIANT(m)) {


                p = message_extend_fields(m, 8, 8 + 8 + 1 + 1, 1);
                if (!p)
                        return -ENOMEM;

                *((uint64_t*) p) = h;
                *((uint64_t*) (p + 8)) = x;
                p[16] = 0;
                p[17] = 't';
        } else {

                p = message_extend_fields(m, 8, 4 + 4 + 8, 0);
                if (!p)
                        return -ENOMEM;

                p[0] = (uint8_t) h;
                p[1] = 1;
                p[2] = 't';
                p[3] = 0;
                p[4] = 0;
                p[5] = 0;
                p[6] = 0;
                p[7] = 0;

                ((uint64_t*) p)[1] = x;
        }

        return 0;
}
