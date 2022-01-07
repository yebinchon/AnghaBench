
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** t3procs; } ;
typedef TYPE_1__ fz_font ;
typedef int fz_context ;
typedef int fz_buffer ;



fz_buffer **fz_font_t3_procs(fz_context *ctx, fz_font *font)
{
 return font ? font->t3procs : ((void*)0);
}
