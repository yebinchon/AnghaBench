
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint64_t ;
typedef size_t uint32_t ;
typedef int sd_bus_message ;


 scalar_t__ BUS_MESSAGE_IS_GVARIANT (int *) ;
 int EINVAL ;
 int ENOMEM ;
 size_t UINT32_MAX ;
 int assert (int *) ;
 int memcpy (char*,char const*,size_t) ;
 char* message_extend_fields (int *,int,int,int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int message_append_field_string(
                sd_bus_message *m,
                uint64_t h,
                char type,
                const char *s,
                const char **ret) {

        size_t l;
        uint8_t *p;

        assert(m);


        if (h > 0xFF)
                return -EINVAL;



        l = strlen(s);
        if (l > UINT32_MAX)
                return -EINVAL;



        if (BUS_MESSAGE_IS_GVARIANT(m)) {


                p = message_extend_fields(m, 8, 8 + l + 1 + 1 + 1, 1);
                if (!p)
                        return -ENOMEM;

                *((uint64_t*) p) = h;
                memcpy(p+8, s, l);
                p[8+l] = 0;
                p[8+l+1] = 0;
                p[8+l+2] = type;

                if (ret)
                        *ret = (char*) p + 8;

        } else {

                p = message_extend_fields(m, 8, 4 + 4 + l + 1, 0);
                if (!p)
                        return -ENOMEM;

                p[0] = (uint8_t) h;
                p[1] = 1;
                p[2] = type;
                p[3] = 0;

                ((uint32_t*) p)[1] = l;
                memcpy(p + 8, s, l + 1);

                if (ret)
                        *ret = (char*) p + 8;
        }

        return 0;
}
