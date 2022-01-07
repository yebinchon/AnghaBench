
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {float type; int gen; } ;
typedef TYPE_1__ pdf_xref_entry ;
struct TYPE_7__ {int* gen_list; int do_garbage; int crypt_object_number; scalar_t__* use_list; int out; int * ofs_list; int do_incremental; } ;
typedef TYPE_2__ pdf_write_state ;
typedef int pdf_document ;
typedef int fz_context ;


 int fz_tell_output (int *,int ) ;
 int padto (int *,int ,int ) ;
 TYPE_1__* pdf_get_xref_entry (int *,int *,int) ;
 scalar_t__ pdf_xref_is_incremental (int *,int *,int) ;
 int writeobject (int *,int *,TYPE_2__*,int,int,int,int) ;

__attribute__((used)) static void
dowriteobject(fz_context *ctx, pdf_document *doc, pdf_write_state *opts, int num, int pass)
{
 pdf_xref_entry *entry = pdf_get_xref_entry(ctx, doc, num);
 if (entry->type == 'f')
  opts->gen_list[num] = entry->gen;
 if (entry->type == 'n')
  opts->gen_list[num] = entry->gen;
 if (entry->type == 'o')
  opts->gen_list[num] = 0;






 if (opts->do_garbage >= 2)
  opts->gen_list[num] = (num == 0 ? 65535 : 0);

 if (opts->do_garbage && !opts->use_list[num])
  return;

 if (entry->type == 'n' || entry->type == 'o')
 {
  if (pass > 0)
   padto(ctx, opts->out, opts->ofs_list[num]);
  if (!opts->do_incremental || pdf_xref_is_incremental(ctx, doc, num))
  {
   opts->ofs_list[num] = fz_tell_output(ctx, opts->out);
   writeobject(ctx, doc, opts, num, opts->gen_list[num], 1, num == opts->crypt_object_number);
  }
 }
 else
  opts->use_list[num] = 0;
}
