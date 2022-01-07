
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int ENOMEDIUM ;
 int ENXIO ;
 scalar_t__ IN_SET (int,int ,int ) ;
 int specifier_machine_id (char,void const*,void const*,char**) ;

__attribute__((used)) static int specifier_machine_id_safe(char specifier, const void *data, const void *userdata, char **ret) {
        int r;





        r = specifier_machine_id(specifier, data, userdata, ret);
        if (IN_SET(r, -ENOENT, -ENOMEDIUM))
                return -ENXIO;

        return r;
}
