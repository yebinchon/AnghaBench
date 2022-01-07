
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ k_type; } ;
struct TYPE_6__ {TYPE_1__ k_offset_v2; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
typedef int RFSD_KEY_VERSION ;
typedef TYPE_3__* PRFSD_KEY_ON_DISK ;


 int PAGED_CODE () ;
 int RFSD_KEY_VERSION_1 ;
 int RFSD_KEY_VERSION_2 ;

RFSD_KEY_VERSION DetermineOnDiskKeyFormat(const PRFSD_KEY_ON_DISK key)
{
    int type = (int) key->u.k_offset_v2.k_type;

    PAGED_CODE();

    if ( type == 0x0 || type == 0xF )
        return RFSD_KEY_VERSION_1;

    return RFSD_KEY_VERSION_2;
}
