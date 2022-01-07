
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int platform_id; } ;
struct TYPE_5__ {int num_charmaps; TYPE_2__** charmaps; } ;
typedef TYPE_1__* FT_Face ;
typedef TYPE_2__* FT_CharMap ;



__attribute__((used)) static FT_CharMap
select_type1_cmap(FT_Face face)
{
 int i;
 for (i = 0; i < face->num_charmaps; i++)
  if (face->charmaps[i]->platform_id == 7)
   return face->charmaps[i];
 if (face->num_charmaps > 0)
  return face->charmaps[0];
 return ((void*)0);
}
