
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_output ;
typedef int fz_context ;


 int fz_write_string (int *,int *,char*) ;

__attribute__((used)) static void fz_trace_indent(fz_context *ctx, fz_output *out, int depth)
{
 while (depth-- > 0)
  fz_write_string(ctx, out, "    ");
}
