
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncpy (char*,char const*,size_t) ;

__attribute__((used)) static void set_usb_iftype(char *to, int if_class_num, size_t len) {
        const char *type = "generic";

        switch (if_class_num) {
        case 1:
                type = "audio";
                break;
        case 2:
                break;
        case 3:
                type = "hid";
                break;
        case 5:
                break;
        case 6:
                type = "media";
                break;
        case 7:
                type = "printer";
                break;
        case 8:
                type = "storage";
                break;
        case 9:
                type = "hub";
                break;
        case 0x0a:
                break;
        case 0x0b:
                break;
        case 0x0d:
                break;
        case 0x0e:
                type = "video";
                break;
        case 0xdc:
                break;
        case 0xe0:
                break;
        case 0xfe:
                break;
        case 0xff:
                break;
        default:
                break;
        }
        strncpy(to, type, len);
        to[len-1] = '\0';
}
