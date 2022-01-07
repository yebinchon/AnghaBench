
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_5__ {int compressed_hypertable_id; int compressed; } ;
struct TYPE_6__ {TYPE_1__ fd; } ;
typedef TYPE_2__ Hypertable ;


 int Assert (int) ;
 scalar_t__ ts_hypertable_update (TYPE_2__*) ;

bool
ts_hypertable_set_compressed_id(Hypertable *ht, int32 compressed_hypertable_id)
{
 Assert(!ht->fd.compressed);
 ht->fd.compressed_hypertable_id = compressed_hypertable_id;
 return ts_hypertable_update(ht) > 0;
}
