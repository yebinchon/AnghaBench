
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_5__ {int id; int interval_length; } ;
struct TYPE_6__ {TYPE_1__ fd; } ;
typedef TYPE_2__ Dimension ;


 int RowExclusiveLock ;
 int dimension_scan_update (int ,int ,TYPE_2__*,int ) ;
 int dimension_tuple_update ;

int
ts_dimension_set_chunk_interval(Dimension *dim, int64 chunk_interval)
{
 dim->fd.interval_length = chunk_interval;

 return dimension_scan_update(dim->fd.id, dimension_tuple_update, dim, RowExclusiveLock);
}
