
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HeapTuple ;
typedef int FormData_continuous_agg ;


 scalar_t__ GETSTRUCT (int *) ;
 int * heap_copytuple (int *) ;

__attribute__((used)) static FormData_continuous_agg *
ensure_new_tuple(HeapTuple old_tuple, HeapTuple *new_tuple)
{
 if (*new_tuple == ((void*)0))
  *new_tuple = heap_copytuple(old_tuple);

 return (FormData_continuous_agg *) GETSTRUCT(*new_tuple);
}
