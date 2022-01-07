
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t t_len; TYPE_1__* t_data; } ;
struct TYPE_5__ {size_t t_hoff; } ;
typedef int MemoryContext ;
typedef TYPE_2__* HeapTuple ;


 int Assert (int) ;
 int GETSTRUCT (TYPE_2__*) ;
 void* MemoryContextAllocZero (int ,size_t) ;
 int memcpy (void*,int ,size_t) ;

void *
ts_create_struct_from_tuple(HeapTuple tuple, MemoryContext mctx, size_t alloc_size,
       size_t copy_size)
{
 void *struct_ptr = MemoryContextAllocZero(mctx, alloc_size);


 Assert(copy_size == tuple->t_len - tuple->t_data->t_hoff);
 memcpy(struct_ptr, GETSTRUCT(tuple), copy_size);

 return struct_ptr;
}
