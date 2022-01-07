
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int compressed_hypertable_id; int compressed; } ;
struct TYPE_6__ {TYPE_1__ fd; } ;
typedef TYPE_2__ Hypertable ;


 int Assert (int) ;
 int INVALID_HYPERTABLE_ID ;
 scalar_t__ ts_hypertable_update (TYPE_2__*) ;

bool
ts_hypertable_unset_compressed_id(Hypertable *ht)
{
 Assert(!ht->fd.compressed);
 ht->fd.compressed_hypertable_id = INVALID_HYPERTABLE_ID;
 return ts_hypertable_update(ht) > 0;
}
