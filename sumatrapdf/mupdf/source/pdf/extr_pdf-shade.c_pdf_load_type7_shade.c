
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int pdf_function ;
typedef int pdf_document ;
struct TYPE_8__ {int * c1; int * c0; } ;
struct TYPE_7__ {TYPE_2__ m; } ;
struct TYPE_9__ {int buffer; TYPE_1__ u; } ;
typedef TYPE_3__ fz_shade ;
typedef int fz_context ;


 int pdf_load_compressed_stream (int *,int *,int ) ;
 int pdf_load_mesh_params (int *,int *,TYPE_3__*,int *) ;
 int pdf_sample_shade_function (int *,TYPE_3__*,int,int **,int ,int ) ;
 int pdf_to_num (int *,int *) ;

__attribute__((used)) static void
pdf_load_type7_shade(fz_context *ctx, pdf_document *doc, fz_shade *shade, pdf_obj *dict, int funcs, pdf_function **func)
{
 pdf_load_mesh_params(ctx, doc, shade, dict);

 if (funcs > 0)
  pdf_sample_shade_function(ctx, shade, funcs, func, shade->u.m.c0[0], shade->u.m.c1[0]);

 shade->buffer = pdf_load_compressed_stream(ctx, doc, pdf_to_num(ctx, dict));
}
