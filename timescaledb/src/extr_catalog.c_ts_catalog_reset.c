
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int database_id; } ;
struct TYPE_3__ {int initialized; } ;


 int InvalidOid ;
 TYPE_2__ database_info ;
 TYPE_1__ s_catalog ;

void
ts_catalog_reset(void)
{
 s_catalog.initialized = 0;
 database_info.database_id = InvalidOid;
}
