
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * storage; int * storage_free; int fd; } ;
typedef int Form_dimension_slice ;
typedef int FormData_dimension_slice ;
typedef TYPE_1__ DimensionSlice ;


 TYPE_1__* dimension_slice_alloc () ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static inline DimensionSlice *
dimension_slice_from_form_data(Form_dimension_slice fd)
{
 DimensionSlice *slice = dimension_slice_alloc();

 memcpy(&slice->fd, fd, sizeof(FormData_dimension_slice));
 slice->storage_free = ((void*)0);
 slice->storage = ((void*)0);
 return slice;
}
