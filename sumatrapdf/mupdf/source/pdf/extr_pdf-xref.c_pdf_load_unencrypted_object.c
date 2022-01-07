
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {char type; int ofs; } ;
typedef TYPE_2__ pdf_xref_entry ;
typedef int pdf_obj ;
struct TYPE_9__ {int base; } ;
struct TYPE_11__ {TYPE_1__ lexbuf; int file; } ;
typedef TYPE_3__ pdf_document ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int SEEK_SET ;
 int fz_seek (int *,int ,int ,int ) ;
 int fz_throw (int *,int ,char*,int,int) ;
 TYPE_2__* pdf_get_xref_entry (int *,TYPE_3__*,int) ;
 int * pdf_parse_ind_obj (int *,TYPE_3__*,int ,int *,int *,int *,int *,int *) ;
 int pdf_xref_len (int *,TYPE_3__*) ;

pdf_obj *
pdf_load_unencrypted_object(fz_context *ctx, pdf_document *doc, int num)
{
 pdf_xref_entry *x;

 if (num <= 0 || num >= pdf_xref_len(ctx, doc))
  fz_throw(ctx, FZ_ERROR_GENERIC, "object out of range (%d 0 R); xref size %d", num, pdf_xref_len(ctx, doc));

 x = pdf_get_xref_entry(ctx, doc, num);
 if (x->type == 'n')
 {
  fz_seek(ctx, doc->file, x->ofs, SEEK_SET);
  return pdf_parse_ind_obj(ctx, doc, doc->file, &doc->lexbuf.base, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
 }
 return ((void*)0);
}
