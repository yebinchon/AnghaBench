
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strscpy (char*,size_t,char const*) ;
 int strtoul (char const*,char**,int ) ;

__attribute__((used)) static int set_usb_mass_storage_ifsubtype(char *to, const char *from, size_t len) {
        int type_num = 0;
        char *eptr;
        const char *type = "generic";

        type_num = strtoul(from, &eptr, 0);
        if (eptr != from) {
                switch (type_num) {
                case 1:
                        type = "rbc";
                        break;
                case 2:
                        type = "atapi";
                        break;
                case 3:
                        type = "tape";
                        break;
                case 4:
                        type = "floppy";
                        break;
                case 6:
                        type = "scsi";
                        break;
                default:
                        break;
                }
        }
        strscpy(to, len, type);
        return type_num;
}
