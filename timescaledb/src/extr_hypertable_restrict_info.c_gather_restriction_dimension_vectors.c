
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ num_slices; } ;
struct TYPE_6__ {int num_dimensions; int ** dimension_restriction; } ;
typedef int List ;
typedef TYPE_1__ HypertableRestrictInfo ;
typedef TYPE_2__ DimensionVec ;
typedef int DimensionRestrictInfo ;


 int Assert (int) ;
 int * NIL ;
 TYPE_2__* dimension_restrict_info_slices (int *) ;
 int * lappend (int *,TYPE_2__*) ;
 int list_length (int *) ;

__attribute__((used)) static List *
gather_restriction_dimension_vectors(HypertableRestrictInfo *hri)
{
 int i;
 List *dimension_vecs = NIL;

 for (i = 0; i < hri->num_dimensions; i++)
 {
  DimensionRestrictInfo *dri = hri->dimension_restriction[i];
  DimensionVec *dv;

  Assert(((void*)0) != dri);

  dv = dimension_restrict_info_slices(dri);

  Assert(dv->num_slices >= 0);





  if (dv->num_slices == 0)
   return NIL;

  dimension_vecs = lappend(dimension_vecs, dv);
 }

 Assert(list_length(dimension_vecs) == hri->num_dimensions);

 return dimension_vecs;
}
