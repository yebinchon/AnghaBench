
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;


 int print_all_attributes (int *,char*) ;
 int printf (char*,...) ;
 int sd_device_get_devpath (int *,char const**) ;
 scalar_t__ sd_device_get_driver (int *,char const**) ;
 scalar_t__ sd_device_get_parent (int *,int **) ;
 scalar_t__ sd_device_get_subsystem (int *,char const**) ;
 int sd_device_get_sysname (int *,char const**) ;

__attribute__((used)) static int print_device_chain(sd_device *device) {
        sd_device *child, *parent;
        const char *str;

        printf("\n"
               "Udevadm info starts with the device specified by the devpath and then\n"
               "walks up the chain of parent devices. It prints for every device\n"
               "found, all possible attributes in the udev rules key format.\n"
               "A rule to match, can be composed by the attributes of the device\n"
               "and the attributes from one single parent device.\n"
               "\n");

        (void) sd_device_get_devpath(device, &str);
        printf("  looking at device '%s':\n", str);
        (void) sd_device_get_sysname(device, &str);
        printf("    KERNEL==\"%s\"\n", str);
        if (sd_device_get_subsystem(device, &str) < 0)
                str = "";
        printf("    SUBSYSTEM==\"%s\"\n", str);
        if (sd_device_get_driver(device, &str) < 0)
                str = "";
        printf("    DRIVER==\"%s\"\n", str);
        print_all_attributes(device, "ATTR");

        for (child = device; sd_device_get_parent(child, &parent) >= 0; child = parent) {
                (void) sd_device_get_devpath(parent, &str);
                printf("  looking at parent device '%s':\n", str);
                (void) sd_device_get_sysname(parent, &str);
                printf("    KERNELS==\"%s\"\n", str);
                if (sd_device_get_subsystem(parent, &str) < 0)
                        str = "";
                printf("    SUBSYSTEMS==\"%s\"\n", str);
                if (sd_device_get_driver(parent, &str) < 0)
                        str = "";
                printf("    DRIVERS==\"%s\"\n", str);
                print_all_attributes(parent, "ATTRS");
        }

        return 0;
}
