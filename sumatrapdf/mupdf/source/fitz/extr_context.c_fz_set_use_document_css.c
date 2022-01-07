
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* style; } ;
typedef TYPE_2__ fz_context ;
struct TYPE_4__ {int use_document_css; } ;



void fz_set_use_document_css(fz_context *ctx, int use)
{
 ctx->style->use_document_css = use;
}
