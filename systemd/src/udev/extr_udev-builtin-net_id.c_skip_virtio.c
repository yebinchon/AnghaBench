
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;


 scalar_t__ sd_device_get_parent (int *,int **) ;
 scalar_t__ sd_device_get_subsystem (int *,char const**) ;
 int streq (char const*,char*) ;

__attribute__((used)) static sd_device *skip_virtio(sd_device *dev) {
        sd_device *parent;




        for (parent = dev; parent; ) {
                const char *subsystem;

                if (sd_device_get_subsystem(parent, &subsystem) < 0)
                        break;

                if (!streq(subsystem, "virtio"))
                        break;

                if (sd_device_get_parent(parent, &parent) < 0)
                        return ((void*)0);
        }

        return parent;
}
