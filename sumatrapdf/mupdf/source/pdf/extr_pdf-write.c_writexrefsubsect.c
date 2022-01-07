
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* ofs_list; int* gen_list; int out; scalar_t__* use_list; } ;
typedef TYPE_1__ pdf_write_state ;
typedef int fz_context ;


 int fz_write_printf (int *,int ,char*,int,int) ;

__attribute__((used)) static void writexrefsubsect(fz_context *ctx, pdf_write_state *opts, int from, int to)
{
 int num;

 fz_write_printf(ctx, opts->out, "%d %d\n", from, to - from);
 for (num = from; num < to; num++)
 {
  if (opts->use_list[num])
   fz_write_printf(ctx, opts->out, "%010lu %05d n \n", opts->ofs_list[num], opts->gen_list[num]);
  else
   fz_write_printf(ctx, opts->out, "%010lu %05d f \n", opts->ofs_list[num], opts->gen_list[num]);
 }
}
