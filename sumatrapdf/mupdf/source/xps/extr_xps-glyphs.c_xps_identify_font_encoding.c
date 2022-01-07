
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_font ;
typedef int fz_context ;
struct TYPE_5__ {TYPE_1__** charmaps; } ;
struct TYPE_4__ {int platform_id; int encoding_id; } ;
typedef TYPE_2__* FT_Face ;


 TYPE_2__* fz_font_ft_face (int *,int *) ;

void
xps_identify_font_encoding(fz_context *ctx, fz_font *font, int idx, int *pid, int *eid)
{
 FT_Face face = fz_font_ft_face(ctx, font);
 *pid = face->charmaps[idx]->platform_id;
 *eid = face->charmaps[idx]->encoding_id;
}
