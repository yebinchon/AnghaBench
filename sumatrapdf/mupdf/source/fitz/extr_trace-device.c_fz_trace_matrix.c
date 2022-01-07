
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_output ;
struct TYPE_3__ {int f; int e; int d; int c; int b; int a; } ;
typedef TYPE_1__ fz_matrix ;
typedef int fz_context ;


 int fz_write_printf (int *,int *,char*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
fz_trace_matrix(fz_context *ctx, fz_output *out, fz_matrix ctm)
{
 fz_write_printf(ctx, out, " transform=\"%g %g %g %g %g %g\"", ctm.a, ctm.b, ctm.c, ctm.d, ctm.e, ctm.f);
}
