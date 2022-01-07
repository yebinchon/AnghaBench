
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_7__ {scalar_t__ capacity; } ;
typedef TYPE_1__ DimensionVec ;


 int DIMENSION_VEC_SIZE (scalar_t__) ;
 TYPE_1__* palloc (int ) ;
 TYPE_1__* repalloc (TYPE_1__*,int ) ;

__attribute__((used)) static DimensionVec *
dimension_vec_expand(DimensionVec *vec, int32 new_capacity)
{
 if (vec != ((void*)0) && vec->capacity >= new_capacity)
  return vec;

 if (((void*)0) == vec)
  vec = palloc(DIMENSION_VEC_SIZE(new_capacity));
 else
  vec = repalloc(vec, DIMENSION_VEC_SIZE(new_capacity));

 vec->capacity = new_capacity;

 return vec;
}
