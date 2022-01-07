
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t dmu_object_type_t ;
struct TYPE_4__ {char* ot_name; } ;
struct TYPE_3__ {char* ob_name; } ;


 size_t DMU_BSWAP_NUMFUNCS ;
 size_t DMU_OT_BYTESWAP_MASK ;
 size_t DMU_OT_NEWTYPE ;
 size_t DMU_OT_NUMTYPES ;
 TYPE_2__* dmu_ot ;
 TYPE_1__* dmu_ot_byteswap ;

__attribute__((used)) static char *
zdb_ot_name(dmu_object_type_t type)
{
 if (type < DMU_OT_NUMTYPES)
  return (dmu_ot[type].ot_name);
 else if ((type & DMU_OT_NEWTYPE) &&
     ((type & DMU_OT_BYTESWAP_MASK) < DMU_BSWAP_NUMFUNCS))
  return (dmu_ot_byteswap[type & DMU_OT_BYTESWAP_MASK].ob_name);
 else
  return ("UNKNOWN");
}
