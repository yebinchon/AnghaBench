
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
struct TYPE_7__ {scalar_t__ monotonic; scalar_t__ realtime; } ;
typedef TYPE_1__ dual_timestamp ;


 int acpi_get_boot_usec (scalar_t__*,scalar_t__*) ;
 int assert (TYPE_1__*) ;
 int dual_timestamp_get (TYPE_1__*) ;
 int efi_loader_get_boot_usec (scalar_t__*,scalar_t__*) ;

int boot_timestamps(const dual_timestamp *n, dual_timestamp *firmware, dual_timestamp *loader) {
        usec_t x = 0, y = 0, a;
        int r;
        dual_timestamp _n;

        assert(firmware);
        assert(loader);

        if (!n) {
                dual_timestamp_get(&_n);
                n = &_n;
        }

        r = acpi_get_boot_usec(&x, &y);
        if (r < 0) {
                r = efi_loader_get_boot_usec(&x, &y);
                if (r < 0)
                        return r;
        }
        firmware->monotonic = y;
        loader->monotonic = y - x;

        a = n->monotonic + firmware->monotonic;
        firmware->realtime = n->realtime > a ? n->realtime - a : 0;

        a = n->monotonic + loader->monotonic;
        loader->realtime = n->realtime > a ? n->realtime - a : 0;

        return 0;
}
