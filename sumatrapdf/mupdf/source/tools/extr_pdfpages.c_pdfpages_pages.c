
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_document ;
typedef int fz_output ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_is_page_range (int *,char*) ;
 int fz_throw (int *,int ,char*,char*) ;
 int fz_write_printf (int *,int *,char*,char*) ;
 int pdf_authenticate_password (int *,int *,char*) ;
 int pdf_drop_document (int *,int *) ;
 scalar_t__ pdf_needs_password (int *,int *) ;
 int * pdf_open_document (int *,char*) ;
 int showpages (int *,int *,int *,char*) ;

__attribute__((used)) static int
pdfpages_pages(fz_context *ctx, fz_output *out, char *filename, char *password, char *argv[], int argc)
{
 enum { NO_FILE_OPENED, NO_INFO_GATHERED, INFO_SHOWN } state;
 int argidx = 0;
 pdf_document *doc = ((void*)0);
 int ret = 0;

 state = NO_FILE_OPENED;
 while (argidx < argc)
 {
  if (state == NO_FILE_OPENED || !fz_is_page_range(ctx, argv[argidx]))
  {
   if (state == NO_INFO_GATHERED)
   {
    showpages(ctx, doc, out, "1-N");
   }

   pdf_drop_document(ctx, doc);

   filename = argv[argidx];
   fz_write_printf(ctx, out, "%s:\n", filename);
   doc = pdf_open_document(ctx, filename);
   if (pdf_needs_password(ctx, doc))
    if (!pdf_authenticate_password(ctx, doc, password))
     fz_throw(ctx, FZ_ERROR_GENERIC, "cannot authenticate password: %s", filename);

   state = NO_INFO_GATHERED;
  }
  else
  {
   ret |= showpages(ctx, doc, out, argv[argidx]);
   state = INFO_SHOWN;
  }

  argidx++;
 }

 if (state == NO_INFO_GATHERED)
  showpages(ctx, doc, out, "1-N");

 pdf_drop_document(ctx, doc);

 return ret;
}
