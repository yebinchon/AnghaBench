
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * storage_free; int * storage; } ;
typedef TYPE_1__ DimensionSlice ;


 int Assert (int ) ;
 int memcpy (TYPE_1__*,TYPE_1__ const*,int) ;
 TYPE_1__* palloc (int) ;

DimensionSlice *
ts_dimension_slice_copy(const DimensionSlice *original)
{
 DimensionSlice *new = palloc(sizeof(DimensionSlice));

 Assert(original->storage == ((void*)0));
 Assert(original->storage_free == ((void*)0));

 memcpy(new, original, sizeof(DimensionSlice));
 return new;
}
