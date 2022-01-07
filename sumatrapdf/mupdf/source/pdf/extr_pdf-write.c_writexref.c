
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int out; int do_ascii; int do_tight; scalar_t__ do_incremental; int first_xref_entry_offset; } ;
typedef TYPE_1__ pdf_write_state ;
typedef int pdf_obj ;
struct TYPE_11__ {int startxref; scalar_t__ has_xref_streams; } ;
typedef TYPE_2__ pdf_document ;
typedef int int64_t ;
typedef int fz_context ;


 int Encrypt ;
 int ID ;
 int Info ;
 int PDF_NAME (int ) ;
 int Prev ;
 int Root ;
 int Size ;
 int fz_tell_output (int *,int ) ;
 int fz_var (int *) ;
 int fz_write_printf (int *,int ,char*,int) ;
 int fz_write_string (int *,int ,char*) ;
 int * pdf_dict_get (int *,int ,int ) ;
 int pdf_dict_put (int *,int *,int ,int *) ;
 int pdf_dict_put_drop (int *,int *,int ,int *) ;
 int pdf_dict_put_int (int *,int *,int ,int) ;
 int pdf_drop_obj (int *,int *) ;
 int * pdf_keep_obj (int *,int ) ;
 int * pdf_new_dict (int *,TYPE_2__*,int) ;
 int * pdf_new_int (int *,int) ;
 int pdf_print_obj (int *,int ,int *,int ,int ) ;
 int pdf_trailer (int *,TYPE_2__*) ;
 scalar_t__ pdf_xref_is_incremental (int *,TYPE_2__*,int) ;
 int pdf_xref_len (int *,TYPE_2__*) ;
 int writexrefsubsect (int *,TYPE_1__*,int,int) ;

__attribute__((used)) static void writexref(fz_context *ctx, pdf_document *doc, pdf_write_state *opts, int from, int to, int first, int64_t main_xref_offset, int64_t startxref)
{
 pdf_obj *trailer = ((void*)0);
 pdf_obj *obj;
 pdf_obj *nobj = ((void*)0);

 fz_write_string(ctx, opts->out, "xref\n");
 opts->first_xref_entry_offset = fz_tell_output(ctx, opts->out);

 if (opts->do_incremental)
 {
  int subfrom = from;
  int subto;

  while (subfrom < to)
  {
   while (subfrom < to && !pdf_xref_is_incremental(ctx, doc, subfrom))
    subfrom++;

   subto = subfrom;
   while (subto < to && pdf_xref_is_incremental(ctx, doc, subto))
    subto++;

   if (subfrom < subto)
    writexrefsubsect(ctx, opts, subfrom, subto);

   subfrom = subto;
  }
 }
 else
 {
  writexrefsubsect(ctx, opts, from, to);
 }

 fz_write_string(ctx, opts->out, "\n");

 fz_var(trailer);

 if (opts->do_incremental)
 {
  trailer = pdf_keep_obj(ctx, pdf_trailer(ctx, doc));
  pdf_dict_put_int(ctx, trailer, PDF_NAME(Size), pdf_xref_len(ctx, doc));
  pdf_dict_put_int(ctx, trailer, PDF_NAME(Prev), doc->startxref);
  doc->startxref = startxref;
 }
 else
 {
  trailer = pdf_new_dict(ctx, doc, 5);

  nobj = pdf_new_int(ctx, to);
  pdf_dict_put_drop(ctx, trailer, PDF_NAME(Size), nobj);

  if (first)
  {
   obj = pdf_dict_get(ctx, pdf_trailer(ctx, doc), PDF_NAME(Info));
   if (obj)
    pdf_dict_put(ctx, trailer, PDF_NAME(Info), obj);

   obj = pdf_dict_get(ctx, pdf_trailer(ctx, doc), PDF_NAME(Root));
   if (obj)
    pdf_dict_put(ctx, trailer, PDF_NAME(Root), obj);

   obj = pdf_dict_get(ctx, pdf_trailer(ctx, doc), PDF_NAME(ID));
   if (obj)
    pdf_dict_put(ctx, trailer, PDF_NAME(ID), obj);

   obj = pdf_dict_get(ctx, pdf_trailer(ctx, doc), PDF_NAME(Encrypt));
   if (obj)
    pdf_dict_put(ctx, trailer, PDF_NAME(Encrypt), obj);
  }
  if (main_xref_offset != 0)
  {
   nobj = pdf_new_int(ctx, main_xref_offset);
   pdf_dict_put_drop(ctx, trailer, PDF_NAME(Prev), nobj);
  }
 }

 fz_write_string(ctx, opts->out, "trailer\n");

 pdf_print_obj(ctx, opts->out, trailer, opts->do_tight, opts->do_ascii);
 fz_write_string(ctx, opts->out, "\n");

 pdf_drop_obj(ctx, trailer);

 fz_write_printf(ctx, opts->out, "startxref\n%lu\n%%%%EOF\n", startxref);

 doc->has_xref_streams = 0;
}
