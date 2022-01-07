
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ num_base_restrictions; } ;
typedef TYPE_1__ HypertableRestrictInfo ;



bool
ts_hypertable_restrict_info_has_restrictions(HypertableRestrictInfo *hri)
{
 return hri->num_base_restrictions > 0;
}
