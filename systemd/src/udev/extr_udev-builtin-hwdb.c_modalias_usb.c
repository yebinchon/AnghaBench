
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int sd_device ;


 scalar_t__ safe_atoux16 (char const*,int*) ;
 scalar_t__ sd_device_get_sysattr_value (int *,char*,char const**) ;
 int snprintf (char*,size_t,char*,int,int) ;

__attribute__((used)) static const char *modalias_usb(sd_device *dev, char *s, size_t size) {
        const char *v, *p;
        uint16_t vn, pn;

        if (sd_device_get_sysattr_value(dev, "idVendor", &v) < 0)
                return ((void*)0);
        if (sd_device_get_sysattr_value(dev, "idProduct", &p) < 0)
                return ((void*)0);
        if (safe_atoux16(v, &vn) < 0)
                return ((void*)0);
        if (safe_atoux16(p, &pn) < 0)
                return ((void*)0);
        snprintf(s, size, "usb:v%04Xp%04X*", vn, pn);
        return s;
}
