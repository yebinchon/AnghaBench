
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strscpy (char*,size_t,char const*) ;
 int strtoul (char const*,char**,int ) ;

__attribute__((used)) static void set_type(const char *from, char *to, size_t len) {
        int type_num;
        char *eptr;
        const char *type = "generic";

        type_num = strtoul(from, &eptr, 0);
        if (eptr != from) {
                switch (type_num) {
                case 0:
                        type = "disk";
                        break;
                case 1:
                        type = "tape";
                        break;
                case 4:
                        type = "optical";
                        break;
                case 5:
                        type = "cd";
                        break;
                case 7:
                        type = "optical";
                        break;
                case 0xe:
                        type = "disk";
                        break;
                case 0xf:
                        type = "optical";
                        break;
                default:
                        break;
                }
        }
        strscpy(to, len, type);
}
