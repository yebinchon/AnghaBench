
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ VIRTUALIZATION_IS_CONTAINER (int) ;
 scalar_t__ VIRTUALIZATION_IS_VM (int) ;
 int detect_virtualization () ;
 int free (char*) ;
 int read_one_line_file (char*,char**) ;
 int safe_atou (char*,unsigned int*) ;

__attribute__((used)) static const char* fallback_chassis(void) {
        char *type;
        unsigned t;
        int v, r;

        v = detect_virtualization();
        if (VIRTUALIZATION_IS_VM(v))
                return "vm";
        if (VIRTUALIZATION_IS_CONTAINER(v))
                return "container";

        r = read_one_line_file("/sys/class/dmi/id/chassis_type", &type);
        if (r < 0)
                goto try_acpi;

        r = safe_atou(type, &t);
        free(type);
        if (r < 0)
                goto try_acpi;
        switch (t) {

        case 0x3:
        case 0x4:
        case 0x6:
        case 0x7:
                return "desktop";

        case 0x8:
        case 0x9:
        case 0xA:
        case 0xE:
                return "laptop";

        case 0xB:
                return "handset";

        case 0x11:
        case 0x1C:
        case 0x1D:
                return "server";

        case 0x1E:
                return "tablet";

        case 0x1F:
        case 0x20:
                return "convertible";
        }

try_acpi:
        r = read_one_line_file("/sys/firmware/acpi/pm_profile", &type);
        if (r < 0)
                return ((void*)0);

        r = safe_atou(type, &t);
        free(type);
        if (r < 0)
                return ((void*)0);
        switch(t) {

        case 1:
        case 3:
        case 6:
                return "desktop";

        case 2:
                return "laptop";

        case 4:
        case 5:
        case 7:
                return "server";

        case 8:
                return "tablet";
        }

        return ((void*)0);
}
