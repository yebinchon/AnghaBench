
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int is_bold; } ;
struct TYPE_5__ {TYPE_1__ flags; } ;
typedef TYPE_2__ fz_font ;
typedef int fz_context ;



int fz_font_is_bold(fz_context *ctx, fz_font *font)
{
 return font ? font->flags.is_bold : 0;
}
