
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const* sd_bus_message ;


 int ENXIO ;
 int IN_SET (char,int ,int ,int ) ;
 int SD_BUS_TYPE_OBJECT_PATH ;
 int SD_BUS_TYPE_SIGNATURE ;
 int SD_BUS_TYPE_STRING ;
 int assert (char const**) ;
 int bus_message_get_arg_skip (char const**,unsigned int,char*,int *) ;
 int sd_bus_message_read_basic (char const**,char,char const**) ;

int bus_message_get_arg(sd_bus_message *m, unsigned i, const char **str) {
        char type;
        int r;

        assert(m);
        assert(str);

        r = bus_message_get_arg_skip(m, i, &type, ((void*)0));
        if (r < 0)
                return r;

        if (!IN_SET(type, SD_BUS_TYPE_STRING, SD_BUS_TYPE_OBJECT_PATH, SD_BUS_TYPE_SIGNATURE))
                return -ENXIO;

        return sd_bus_message_read_basic(m, type, str);
}
