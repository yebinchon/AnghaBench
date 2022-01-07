
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const sd_device ;


 int assert (char const*) ;
 int device_add_property_aux (char const*,char const*,char const*,int) ;

int device_add_property(sd_device *device, const char *key, const char *value) {
        int r;

        assert(device);
        assert(key);

        r = device_add_property_aux(device, key, value, 0);
        if (r < 0)
                return r;

        if (key[0] != '.') {
                r = device_add_property_aux(device, key, value, 1);
                if (r < 0)
                        return r;
        }

        return 0;
}
