
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int storage; int (* storage_free ) (int ) ;} ;
typedef TYPE_1__ DimensionSlice ;


 int pfree (TYPE_1__*) ;
 int stub1 (int ) ;

void
ts_dimension_slice_free(DimensionSlice *slice)
{
 if (slice->storage_free != ((void*)0))
  slice->storage_free(slice->storage);
 pfree(slice);
}
