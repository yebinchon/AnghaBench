
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;


 int ENOENT ;
 int assert (int *) ;
 int sd_device_get_property_value (int *,char*,int *) ;

int device_is_renaming(sd_device *dev) {
        int r;

        assert(dev);

        r = sd_device_get_property_value(dev, "ID_RENAMING", ((void*)0));
        if (r < 0 && r != -ENOENT)
                return r;

        return r >= 0;
}
