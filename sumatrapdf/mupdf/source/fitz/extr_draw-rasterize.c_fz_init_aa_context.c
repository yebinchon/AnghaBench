
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hscale; int vscale; int scale; int bits; int text_bits; } ;
struct TYPE_5__ {TYPE_1__ aa; } ;
typedef TYPE_2__ fz_context ;



void fz_init_aa_context(fz_context *ctx)
{

 ctx->aa.hscale = 17;
 ctx->aa.vscale = 15;
 ctx->aa.scale = 256;
 ctx->aa.bits = 8;
 ctx->aa.text_bits = 8;

}
