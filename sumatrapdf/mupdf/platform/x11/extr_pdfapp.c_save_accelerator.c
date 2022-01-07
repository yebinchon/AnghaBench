
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_document ;
typedef int fz_context ;
typedef int absname ;


 int PATH_MAX ;
 int fz_document_supports_accelerator (int *,int *) ;
 int fz_save_accelerator (int *,int *,char*) ;
 int get_accelerator_filename (int *,char*,int,char const*) ;

__attribute__((used)) static void save_accelerator(fz_context *ctx, fz_document *doc, const char *filename)
{
 char absname[PATH_MAX];

 if (!doc)
  return;
 if (!fz_document_supports_accelerator(ctx, doc))
  return;
 if (!get_accelerator_filename(ctx, absname, sizeof(absname), filename))
  return;

 fz_save_accelerator(ctx, doc, absname);
}
