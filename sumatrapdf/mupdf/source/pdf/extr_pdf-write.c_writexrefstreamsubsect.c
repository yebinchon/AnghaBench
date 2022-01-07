
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* ofs_list; int* gen_list; scalar_t__* use_list; } ;
typedef TYPE_1__ pdf_write_state ;
typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;
typedef int fz_buffer ;


 int fz_append_byte (int *,int *,int) ;
 int pdf_array_push_int (int *,int *,int) ;

__attribute__((used)) static void writexrefstreamsubsect(fz_context *ctx, pdf_document *doc, pdf_write_state *opts, pdf_obj *index, fz_buffer *fzbuf, int from, int to)
{
 int num;

 pdf_array_push_int(ctx, index, from);
 pdf_array_push_int(ctx, index, to - from);
 for (num = from; num < to; num++)
 {
  fz_append_byte(ctx, fzbuf, opts->use_list[num] ? 1 : 0);
  fz_append_byte(ctx, fzbuf, opts->ofs_list[num]>>24);
  fz_append_byte(ctx, fzbuf, opts->ofs_list[num]>>16);
  fz_append_byte(ctx, fzbuf, opts->ofs_list[num]>>8);
  fz_append_byte(ctx, fzbuf, opts->ofs_list[num]);
  fz_append_byte(ctx, fzbuf, opts->gen_list[num]);
 }
}
