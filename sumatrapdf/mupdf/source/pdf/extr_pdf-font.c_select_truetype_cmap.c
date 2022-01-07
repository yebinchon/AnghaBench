
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int platform_id; int encoding_id; } ;
struct TYPE_6__ {int num_charmaps; TYPE_2__** charmaps; } ;
typedef TYPE_1__* FT_Face ;
typedef TYPE_2__* FT_CharMap ;


 int FT_Get_CMap_Format (TYPE_2__*) ;

__attribute__((used)) static FT_CharMap
select_truetype_cmap(FT_Face face, int symbolic)
{
 int i;


 if (symbolic)
 {
  for (i = 0; i < face->num_charmaps; i++)
   if (face->charmaps[i]->platform_id == 3 && face->charmaps[i]->encoding_id == 0)
    return face->charmaps[i];
 }


 for (i = 0; i < face->num_charmaps; i++)
  if (face->charmaps[i]->platform_id == 3 && face->charmaps[i]->encoding_id == 1)
   if (FT_Get_CMap_Format(face->charmaps[i]) != -1)
    return face->charmaps[i];


 for (i = 0; i < face->num_charmaps; i++)
  if (face->charmaps[i]->platform_id == 1 && face->charmaps[i]->encoding_id == 0)
   if (FT_Get_CMap_Format(face->charmaps[i]) != -1)
    return face->charmaps[i];

 if (face->num_charmaps > 0)
  if (FT_Get_CMap_Format(face->charmaps[0]) != -1)
   return face->charmaps[0];
 return ((void*)0);
}
