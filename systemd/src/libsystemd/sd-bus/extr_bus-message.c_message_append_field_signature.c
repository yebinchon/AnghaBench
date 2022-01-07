
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int sd_bus_message ;


 scalar_t__ BUS_MESSAGE_IS_GVARIANT (int *) ;
 int EINVAL ;
 int ENOMEM ;
 size_t SD_BUS_MAXIMUM_SIGNATURE_LENGTH ;
 int SD_BUS_TYPE_SIGNATURE ;
 int assert (int *) ;
 int memcpy (int*,char const*,size_t) ;
 int message_append_field_string (int *,int,char,char const*,char const**) ;
 int* message_extend_fields (int *,int,int,int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int message_append_field_signature(
                sd_bus_message *m,
                uint64_t h,
                const char *s,
                const char **ret) {

        size_t l;
        uint8_t *p;

        assert(m);


        if (h > 0xFF)
                return -EINVAL;



        l = strlen(s);
        if (l > SD_BUS_MAXIMUM_SIGNATURE_LENGTH)
                return -EINVAL;



        if (BUS_MESSAGE_IS_GVARIANT(m))

                return message_append_field_string(m, h, 'g', s, ret);
        else {

                p = message_extend_fields(m, 8, 4 + 1 + l + 1, 0);
                if (!p)
                        return -ENOMEM;

                p[0] = (uint8_t) h;
                p[1] = 1;
                p[2] = SD_BUS_TYPE_SIGNATURE;
                p[3] = 0;
                p[4] = l;
                memcpy(p + 5, s, l + 1);

                if (ret)
                        *ret = (const char*) p + 5;
        }

        return 0;
}
