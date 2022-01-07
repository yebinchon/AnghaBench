
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DimensionSlice ;


 int * palloc0 (int) ;

__attribute__((used)) static inline DimensionSlice *
dimension_slice_alloc(void)
{
 return palloc0(sizeof(DimensionSlice));
}
