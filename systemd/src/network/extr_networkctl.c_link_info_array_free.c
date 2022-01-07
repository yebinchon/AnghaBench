
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ssid; int sd_device; scalar_t__ needs_freeing; } ;
typedef TYPE_1__ LinkInfo ;


 int free (int ) ;
 TYPE_1__ const* mfree (TYPE_1__*) ;
 int sd_device_unref (int ) ;

__attribute__((used)) static const LinkInfo* link_info_array_free(LinkInfo *array) {
        for (unsigned i = 0; array && array[i].needs_freeing; i++) {
                sd_device_unref(array[i].sd_device);
                free(array[i].ssid);
        }

        return mfree(array);
}
