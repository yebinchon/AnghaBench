
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int D ;
 int F ;
 int FirstPage ;
 int GoTo ;
 int GoToR ;
 int LastPage ;
 int Launch ;
 int N ;
 int Named ;
 int NextPage ;
 int PDF_NAME (int ) ;
 int PrevPage ;
 int S ;
 int URI ;
 char* fz_asprintf (int *,char*,int) ;
 int fz_is_external_link (int *,char const*) ;
 char* fz_malloc (int *,scalar_t__) ;
 char* fz_strdup (int *,char const*) ;
 int pdf_count_pages (int *,int *) ;
 int * pdf_dict_get (int *,int *,int ) ;
 char* pdf_dict_get_text_string (int *,int *,int ) ;
 int * pdf_dict_getp (int *,int ,char*) ;
 scalar_t__ pdf_name_eq (int *,int ,int *) ;
 char* pdf_parse_file_spec (int *,int *,int *,int *) ;
 char* pdf_parse_link_dest (int *,int *,int *) ;
 char* pdf_to_text_string (int *,int *) ;
 int pdf_trailer (int *,int *) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

char *
pdf_parse_link_action(fz_context *ctx, pdf_document *doc, pdf_obj *action, int pagenum)
{
 pdf_obj *obj, *dest, *file_spec;

 if (!action)
  return ((void*)0);

 obj = pdf_dict_get(ctx, action, PDF_NAME(S));
 if (pdf_name_eq(ctx, PDF_NAME(GoTo), obj))
 {
  dest = pdf_dict_get(ctx, action, PDF_NAME(D));
  return pdf_parse_link_dest(ctx, doc, dest);
 }
 else if (pdf_name_eq(ctx, PDF_NAME(URI), obj))
 {

  const char *uri = pdf_dict_get_text_string(ctx, action, PDF_NAME(URI));
  if (!fz_is_external_link(ctx, uri))
  {
   pdf_obj *uri_base_obj = pdf_dict_getp(ctx, pdf_trailer(ctx, doc), "Root/URI/Base");
   const char *uri_base = uri_base_obj ? pdf_to_text_string(ctx, uri_base_obj) : "file://";
   char *new_uri = fz_malloc(ctx, strlen(uri_base) + strlen(uri) + 1);
   strcpy(new_uri, uri_base);
   strcat(new_uri, uri);
   return new_uri;
  }
  return fz_strdup(ctx, uri);
 }
 else if (pdf_name_eq(ctx, PDF_NAME(Launch), obj))
 {
  file_spec = pdf_dict_get(ctx, action, PDF_NAME(F));
  return pdf_parse_file_spec(ctx, doc, file_spec, ((void*)0));
 }
 else if (pdf_name_eq(ctx, PDF_NAME(GoToR), obj))
 {
  dest = pdf_dict_get(ctx, action, PDF_NAME(D));
  file_spec = pdf_dict_get(ctx, action, PDF_NAME(F));
  return pdf_parse_file_spec(ctx, doc, file_spec, dest);
 }
 else if (pdf_name_eq(ctx, PDF_NAME(Named), obj))
 {
  dest = pdf_dict_get(ctx, action, PDF_NAME(N));

  if (pdf_name_eq(ctx, PDF_NAME(FirstPage), dest))
   pagenum = 0;
  else if (pdf_name_eq(ctx, PDF_NAME(LastPage), dest))
   pagenum = pdf_count_pages(ctx, doc) - 1;
  else if (pdf_name_eq(ctx, PDF_NAME(PrevPage), dest) && pagenum >= 0)
  {
   if (pagenum > 0)
    pagenum--;
  }
  else if (pdf_name_eq(ctx, PDF_NAME(NextPage), dest) && pagenum >= 0)
  {
   if (pagenum < pdf_count_pages(ctx, doc) - 1)
    pagenum++;
  }
  else
   return ((void*)0);

  return fz_asprintf(ctx, "#%d", pagenum + 1);
 }

 return ((void*)0);
}
