
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ code; int name; } ;
typedef TYPE_1__ sd_bus_error_map ;


 TYPE_1__* ALIGN_TO_PTR (TYPE_1__ const*,int) ;
 scalar_t__ BUS_ERROR_MAP_END_MARKER ;
 TYPE_1__ const* __start_SYSTEMD_BUS_ERROR_MAP ;
 TYPE_1__ const* __stop_SYSTEMD_BUS_ERROR_MAP ;
 int errno_to_name (scalar_t__) ;
 int printf (char*,...) ;
 char* strna (int ) ;

__attribute__((used)) static void dump_mapping_table(void) {
        const sd_bus_error_map *m;

        printf("----- errno mappings ------\n");
        m = ALIGN_TO_PTR(__start_SYSTEMD_BUS_ERROR_MAP, sizeof(void*));
        while (m < __stop_SYSTEMD_BUS_ERROR_MAP) {

                if (m->code == BUS_ERROR_MAP_END_MARKER) {
                        m = ALIGN_TO_PTR(m + 1, sizeof(void*));
                        continue;
                }

                printf("%s -> %i/%s\n", strna(m->name), m->code, strna(errno_to_name(m->code)));
                m++;
        }
        printf("---------------------------\n");
}
