
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int start; scalar_t__ hintstream_len; scalar_t__* ofs_list; int out; scalar_t__ main_xref_offset; scalar_t__ do_linear; scalar_t__ first_xref_offset; int do_incremental; } ;
typedef TYPE_1__ pdf_write_state ;
typedef int pdf_document ;
typedef scalar_t__ int64_t ;
typedef int fz_context ;


 int dowriteobject (int *,int *,TYPE_1__*,int,int) ;
 scalar_t__ fz_tell_output (int *,int ) ;
 int fz_write_printf (int *,int ,char*,int,int) ;
 int fz_write_string (int *,int ,char*) ;
 int padto (int *,int ,scalar_t__) ;
 int pdf_version (int *,int *) ;
 int pdf_xref_len (int *,int *) ;
 int writexref (int *,int *,TYPE_1__*,int,int,int,scalar_t__,int ) ;

__attribute__((used)) static void
writeobjects(fz_context *ctx, pdf_document *doc, pdf_write_state *opts, int pass)
{
 int num;
 int xref_len = pdf_xref_len(ctx, doc);

 if (!opts->do_incremental)
 {
  int version = pdf_version(ctx, doc);
  fz_write_printf(ctx, opts->out, "%%PDF-%d.%d\n", version / 10, version % 10);
  fz_write_string(ctx, opts->out, "%\xC2\xB5\xC2\xB6\n\n");
 }

 dowriteobject(ctx, doc, opts, opts->start, pass);

 if (opts->do_linear)
 {

  if (pass == 0)
   opts->first_xref_offset = fz_tell_output(ctx, opts->out);
  else
   padto(ctx, opts->out, opts->first_xref_offset);
  writexref(ctx, doc, opts, opts->start, pdf_xref_len(ctx, doc), 1, opts->main_xref_offset, 0);
 }

 for (num = opts->start+1; num < xref_len; num++)
  dowriteobject(ctx, doc, opts, num, pass);
 if (opts->do_linear && pass == 1)
 {
  int64_t offset = (opts->start == 1 ? opts->main_xref_offset : opts->ofs_list[1] + opts->hintstream_len);
  padto(ctx, opts->out, offset);
 }
 for (num = 1; num < opts->start; num++)
 {
  if (pass == 1)
   opts->ofs_list[num] += opts->hintstream_len;
  dowriteobject(ctx, doc, opts, num, pass);
 }
}
