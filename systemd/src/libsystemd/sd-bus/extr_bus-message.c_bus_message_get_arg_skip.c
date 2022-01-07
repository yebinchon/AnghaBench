
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;


 int ENXIO ;
 int IN_SET (char,int ,int ,int ) ;
 char SD_BUS_TYPE_ARRAY ;
 int SD_BUS_TYPE_OBJECT_PATH ;
 int SD_BUS_TYPE_SIGNATURE ;
 int SD_BUS_TYPE_STRING ;
 scalar_t__ STR_IN_SET (char const*,char*,char*,char*) ;
 int sd_bus_message_peek_type (int *,char*,char const**) ;
 int sd_bus_message_rewind (int *,int) ;
 int sd_bus_message_skip (int *,int *) ;

__attribute__((used)) static int bus_message_get_arg_skip(
                sd_bus_message *m,
                unsigned i,
                char *_type,
                const char **_contents) {

        unsigned j;
        int r;

        r = sd_bus_message_rewind(m, 1);
        if (r < 0)
                return r;

        for (j = 0;; j++) {
                const char *contents;
                char type;

                r = sd_bus_message_peek_type(m, &type, &contents);
                if (r < 0)
                        return r;
                if (r == 0)
                        return -ENXIO;


                if (!IN_SET(type, SD_BUS_TYPE_STRING, SD_BUS_TYPE_OBJECT_PATH, SD_BUS_TYPE_SIGNATURE) &&
                    !(type == SD_BUS_TYPE_ARRAY && STR_IN_SET(contents, "s", "o", "g")))
                        return -ENXIO;

                if (j >= i) {
                        if (_contents)
                                *_contents = contents;
                        if (_type)
                                *_type = type;
                        return 0;
                }

                r = sd_bus_message_skip(m, ((void*)0));
                if (r < 0)
                        return r;
        }

}
