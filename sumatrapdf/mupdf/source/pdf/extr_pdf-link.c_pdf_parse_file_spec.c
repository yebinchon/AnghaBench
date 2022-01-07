
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int DOS ;
 int F ;
 int FS ;
 int PDF_NAME (int ) ;
 int UF ;
 int URL ;
 int Unix ;
 char* fz_asprintf (int *,char*,...) ;
 int fz_snprintf (char*,int,char*,scalar_t__) ;
 int fz_warn (int *,char*) ;
 scalar_t__ pdf_array_get_int (int *,int *,int ) ;
 int * pdf_dict_get (int *,int *,int ) ;
 int * pdf_dict_geta (int *,int *,int ,int ) ;
 scalar_t__ pdf_is_array (int *,int *) ;
 scalar_t__ pdf_is_dict (int *,int *) ;
 scalar_t__ pdf_is_name (int *,int *) ;
 scalar_t__ pdf_is_string (int *,int *) ;
 int pdf_name_eq (int *,int *,int ) ;
 scalar_t__ pdf_to_name (int *,int *) ;
 scalar_t__ pdf_to_str_buf (int *,int *) ;
 char* pdf_to_text_string (int *,int *) ;

char *
pdf_parse_file_spec(fz_context *ctx, pdf_document *doc, pdf_obj *file_spec, pdf_obj *dest)
{
 pdf_obj *filename = ((void*)0);
 const char *path;
 char *uri;
 char frag[256];

 if (pdf_is_string(ctx, file_spec))
  filename = file_spec;

 if (pdf_is_dict(ctx, file_spec)) {



  filename = pdf_dict_get(ctx, file_spec, PDF_NAME(Unix));

  if (!filename)
   filename = pdf_dict_geta(ctx, file_spec, PDF_NAME(UF), PDF_NAME(F));
 }

 if (!pdf_is_string(ctx, filename))
 {
  fz_warn(ctx, "cannot parse file specification");
  return ((void*)0);
 }

 if (pdf_is_array(ctx, dest))
  fz_snprintf(frag, sizeof frag, "#page=%d", pdf_array_get_int(ctx, dest, 0) + 1);
 else if (pdf_is_name(ctx, dest))
  fz_snprintf(frag, sizeof frag, "#%s", pdf_to_name(ctx, dest));
 else if (pdf_is_string(ctx, dest))
  fz_snprintf(frag, sizeof frag, "#%s", pdf_to_str_buf(ctx, dest));
 else
  frag[0] = 0;

 path = pdf_to_text_string(ctx, filename);
 uri = ((void*)0);
 if (!uri)
  uri = fz_asprintf(ctx, "file://%s%s", path, frag);

 return uri;
}
