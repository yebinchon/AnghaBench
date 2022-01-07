
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16 ;
typedef int int32 ;
struct TYPE_4__ {scalar_t__ num_dimensions; int capacity; int main_table_relid; int hypertable_id; } ;
typedef int Oid ;
typedef int MemoryContext ;
typedef TYPE_1__ Hyperspace ;


 int HYPERSPACE_SIZE (int ) ;
 TYPE_1__* MemoryContextAllocZero (int ,int ) ;

__attribute__((used)) static Hyperspace *
hyperspace_create(int32 hypertable_id, Oid main_table_relid, uint16 num_dimensions,
      MemoryContext mctx)
{
 Hyperspace *hs = MemoryContextAllocZero(mctx, HYPERSPACE_SIZE(num_dimensions));

 hs->hypertable_id = hypertable_id;
 hs->main_table_relid = main_table_relid;
 hs->capacity = num_dimensions;
 hs->num_dimensions = 0;
 return hs;
}
