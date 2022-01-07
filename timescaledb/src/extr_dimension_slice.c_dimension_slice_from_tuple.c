
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HeapTuple ;
typedef int Form_dimension_slice ;
typedef int DimensionSlice ;


 scalar_t__ GETSTRUCT (int ) ;
 int * dimension_slice_from_form_data (int ) ;

__attribute__((used)) static inline DimensionSlice *
dimension_slice_from_tuple(HeapTuple tuple)
{
 return dimension_slice_from_form_data((Form_dimension_slice) GETSTRUCT(tuple));
}
