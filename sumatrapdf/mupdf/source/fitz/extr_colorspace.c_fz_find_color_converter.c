
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_15__ {TYPE_4__* base; } ;
struct TYPE_14__ {TYPE_4__* base; } ;
struct TYPE_16__ {TYPE_2__ separation; TYPE_1__ indexed; } ;
struct TYPE_17__ {scalar_t__ type; TYPE_3__ u; } ;
typedef TYPE_4__ fz_colorspace ;
typedef int fz_color_params ;
struct TYPE_18__ {TYPE_4__* ss; int convert; int convert_via; TYPE_4__* ss_via; int * link; TYPE_4__* ds; } ;
typedef TYPE_5__ fz_color_converter ;


 scalar_t__ FZ_COLORSPACE_INDEXED ;
 scalar_t__ FZ_COLORSPACE_SEPARATION ;
 int FZ_ERROR_GENERIC ;
 int fz_init_process_color_converter (int *,TYPE_5__*,TYPE_4__*,TYPE_4__*,TYPE_4__*,int ) ;
 int fz_throw (int *,int ,char*) ;
 int indexed_via_base ;
 int separation_via_base ;

void
fz_find_color_converter(fz_context *ctx, fz_color_converter *cc, fz_colorspace *ss, fz_colorspace *ds, fz_colorspace *is, fz_color_params params)
{
 cc->ds = ds;




 if (ds->type == FZ_COLORSPACE_INDEXED)
  fz_throw(ctx, FZ_ERROR_GENERIC, "Cannot convert into Indexed colorspace.");
 if (ds->type == FZ_COLORSPACE_SEPARATION)
  fz_throw(ctx, FZ_ERROR_GENERIC, "Cannot convert into Separation colorspace.");

 if (ss->type == FZ_COLORSPACE_INDEXED)
 {
  cc->ss = ss->u.indexed.base;
  cc->ss_via = ss;
  fz_init_process_color_converter(ctx, cc, ss->u.indexed.base, ds, is, params);
  cc->convert_via = cc->convert;
  cc->convert = indexed_via_base;
 }
 else if (ss->type == FZ_COLORSPACE_SEPARATION)
 {
  cc->ss = ss->u.separation.base;
  cc->ss_via = ss;
  fz_init_process_color_converter(ctx, cc, ss->u.separation.base, ds, is, params);
  cc->convert_via = cc->convert;
  cc->convert = separation_via_base;
 }
 else
 {
  cc->ss = ss;
  fz_init_process_color_converter(ctx, cc, ss, ds, is, params);
 }
}
