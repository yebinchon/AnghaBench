
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char** sd_bus_message ;


 int ENXIO ;
 char SD_BUS_TYPE_ARRAY ;
 int STR_IN_SET (char const*,char*,char*,char*) ;
 int assert (char***) ;
 int bus_message_get_arg_skip (char***,unsigned int,char*,char const**) ;
 int sd_bus_message_read_strv (char***,char***) ;

int bus_message_get_arg_strv(sd_bus_message *m, unsigned i, char ***strv) {
        const char *contents;
        char type;
        int r;

        assert(m);
        assert(strv);

        r = bus_message_get_arg_skip(m, i, &type, &contents);
        if (r < 0)
                return r;

        if (type != SD_BUS_TYPE_ARRAY)
                return -ENXIO;
        if (!STR_IN_SET(contents, "s", "o", "g"))
                return -ENXIO;

        return sd_bus_message_read_strv(m, strv);
}
