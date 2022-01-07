
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int pdf_lexbuf ;
struct TYPE_5__ {int file; } ;
typedef TYPE_1__ pdf_document ;
typedef int int64_t ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int SEEK_SET ;
 int fz_peek_byte (int *,int ) ;
 int fz_read_byte (int *,int ) ;
 int fz_seek (int *,int ,int ,int ) ;
 int fz_throw (int *,int ,char*) ;
 scalar_t__ isdigit (int) ;
 scalar_t__ iswhite (int) ;
 int * pdf_read_new_xref (int *,TYPE_1__*,int *) ;
 int * pdf_read_old_xref (int *,TYPE_1__*,int *) ;

__attribute__((used)) static pdf_obj *
pdf_read_xref(fz_context *ctx, pdf_document *doc, int64_t ofs, pdf_lexbuf *buf)
{
 pdf_obj *trailer;
 int c;

 fz_seek(ctx, doc->file, ofs, SEEK_SET);

 while (iswhite(fz_peek_byte(ctx, doc->file)))
  fz_read_byte(ctx, doc->file);

 c = fz_peek_byte(ctx, doc->file);
 if (c == 'x')
  trailer = pdf_read_old_xref(ctx, doc, buf);
 else if (isdigit(c))
  trailer = pdf_read_new_xref(ctx, doc, buf);
 else
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot recognize xref format");

 return trailer;
}
