
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int match_allow_uninitialized; int scan_uptodate; } ;
typedef TYPE_1__ sd_device_enumerator ;


 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;

int device_enumerator_add_match_is_initialized(sd_device_enumerator *enumerator) {
        assert_return(enumerator, -EINVAL);

        enumerator->match_allow_uninitialized = 0;

        enumerator->scan_uptodate = 0;

        return 0;
}
