
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* ft_face; } ;
typedef TYPE_1__ fz_font ;
typedef int fz_context ;



void *fz_font_ft_face(fz_context *ctx, fz_font *font)
{
 return font ? font->ft_face : ((void*)0);
}
