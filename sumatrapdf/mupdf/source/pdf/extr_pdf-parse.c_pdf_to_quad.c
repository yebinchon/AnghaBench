
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_10__ {void* y; void* x; } ;
struct TYPE_9__ {void* y; void* x; } ;
struct TYPE_8__ {void* y; void* x; } ;
struct TYPE_7__ {void* y; void* x; } ;
struct TYPE_11__ {TYPE_4__ lr; TYPE_3__ ll; TYPE_2__ ur; TYPE_1__ ul; } ;
typedef TYPE_5__ fz_quad ;
typedef int fz_context ;


 void* pdf_array_get_real (int *,int *,int) ;

fz_quad
pdf_to_quad(fz_context *ctx, pdf_obj *array, int offset)
{
 fz_quad q;
 q.ul.x = pdf_array_get_real(ctx, array, offset+0);
 q.ul.y = pdf_array_get_real(ctx, array, offset+1);
 q.ur.x = pdf_array_get_real(ctx, array, offset+2);
 q.ur.y = pdf_array_get_real(ctx, array, offset+3);
 q.ll.x = pdf_array_get_real(ctx, array, offset+4);
 q.ll.y = pdf_array_get_real(ctx, array, offset+5);
 q.lr.x = pdf_array_get_real(ctx, array, offset+6);
 q.lr.y = pdf_array_get_real(ctx, array, offset+7);
 return q;
}
