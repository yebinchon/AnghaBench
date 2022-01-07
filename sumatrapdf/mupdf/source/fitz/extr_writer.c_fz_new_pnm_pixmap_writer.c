
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_document_writer ;
typedef int fz_context ;


 int * fz_new_pixmap_writer (int *,char const*,char const*,char*,int ,int ) ;
 int fz_save_pixmap_as_pnm ;

fz_document_writer *fz_new_pnm_pixmap_writer(fz_context *ctx, const char *path, const char *options)
{
 return fz_new_pixmap_writer(ctx, path, options, "out-%04d.pnm", 0, fz_save_pixmap_as_pnm);
}
