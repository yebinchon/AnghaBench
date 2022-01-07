
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_9__ {TYPE_1__* base; int tint; int (* eval ) (int *,int ,float const*,int ,float*,int ) ;} ;
struct TYPE_10__ {TYPE_2__ separation; } ;
struct TYPE_11__ {TYPE_3__ u; int n; } ;
typedef TYPE_4__ fz_colorspace ;
struct TYPE_12__ {int (* convert_via ) (int *,TYPE_5__*,float*,float*) ;TYPE_4__* ss_via; } ;
typedef TYPE_5__ fz_color_converter ;
struct TYPE_8__ {int n; } ;


 int stub1 (int *,int ,float const*,int ,float*,int ) ;
 int stub2 (int *,TYPE_5__*,float*,float*) ;

__attribute__((used)) static void separation_via_base(fz_context *ctx, fz_color_converter *cc, const float *src, float *dst)
{
 fz_colorspace *ss = cc->ss_via;
 float base[4];
 ss->u.separation.eval(ctx, ss->u.separation.tint, src, ss->n, base, ss->u.separation.base->n);
 cc->convert_via(ctx, cc, base, dst);
}
