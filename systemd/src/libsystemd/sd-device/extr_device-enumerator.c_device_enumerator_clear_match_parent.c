
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int match_parent; } ;
typedef TYPE_1__ sd_device_enumerator ;


 int set_clear_free (int ) ;

__attribute__((used)) static void device_enumerator_clear_match_parent(sd_device_enumerator *enumerator) {
        if (!enumerator)
                return;

        set_clear_free(enumerator->match_parent);
}
