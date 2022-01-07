
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int refs; } ;
typedef TYPE_1__ fz_text ;
typedef int fz_context ;


 TYPE_1__* fz_keep_imp (int *,TYPE_1__*,int *) ;

fz_text *
fz_keep_text(fz_context *ctx, const fz_text *textc)
{
 fz_text *text = (fz_text *)textc;

 return fz_keep_imp(ctx, text, &text->refs);
}
