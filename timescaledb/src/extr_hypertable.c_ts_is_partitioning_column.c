
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint16 ;
struct TYPE_7__ {TYPE_2__* space; } ;
struct TYPE_6__ {size_t num_dimensions; TYPE_1__* dimensions; } ;
struct TYPE_5__ {scalar_t__ column_attno; } ;
typedef scalar_t__ Index ;
typedef TYPE_3__ Hypertable ;



bool
ts_is_partitioning_column(Hypertable *ht, Index column_attno)
{
 uint16 i;

 for (i = 0; i < ht->space->num_dimensions; i++)
 {
  if (column_attno == ht->space->dimensions[i].column_attno)
   return 1;
 }
 return 0;
}
