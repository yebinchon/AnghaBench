
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int scan_uptodate; scalar_t__ type; size_t n_devices; int * devices; scalar_t__ match_parent; int match_tag; } ;
typedef TYPE_1__ sd_device_enumerator ;


 scalar_t__ DEVICE_ENUMERATION_TYPE_DEVICES ;
 int assert (TYPE_1__*) ;
 int device_compare ;
 int device_enumerator_dedup_devices (TYPE_1__*) ;
 int enumerator_scan_devices_all (TYPE_1__*) ;
 int enumerator_scan_devices_children (TYPE_1__*) ;
 int enumerator_scan_devices_tags (TYPE_1__*) ;
 int sd_device_unref (int ) ;
 int set_isempty (int ) ;
 int typesafe_qsort (int *,size_t,int ) ;

int device_enumerator_scan_devices(sd_device_enumerator *enumerator) {
        int r = 0, k;
        size_t i;

        assert(enumerator);

        if (enumerator->scan_uptodate &&
            enumerator->type == DEVICE_ENUMERATION_TYPE_DEVICES)
                return 0;

        for (i = 0; i < enumerator->n_devices; i++)
                sd_device_unref(enumerator->devices[i]);

        enumerator->n_devices = 0;

        if (!set_isempty(enumerator->match_tag)) {
                k = enumerator_scan_devices_tags(enumerator);
                if (k < 0)
                        r = k;
        } else if (enumerator->match_parent) {
                k = enumerator_scan_devices_children(enumerator);
                if (k < 0)
                        r = k;
        } else {
                k = enumerator_scan_devices_all(enumerator);
                if (k < 0)
                        r = k;
        }

        typesafe_qsort(enumerator->devices, enumerator->n_devices, device_compare);
        device_enumerator_dedup_devices(enumerator);

        enumerator->scan_uptodate = 1;
        enumerator->type = DEVICE_ENUMERATION_TYPE_DEVICES;

        return r;
}
