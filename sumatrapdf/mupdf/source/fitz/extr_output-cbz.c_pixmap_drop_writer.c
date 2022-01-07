
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; int pixmap; } ;
typedef TYPE_1__ fz_pixmap_writer ;
typedef int fz_document_writer ;
typedef int fz_context ;


 int fz_drop_pixmap (int *,int ) ;
 int fz_free (int *,int ) ;

__attribute__((used)) static void
pixmap_drop_writer(fz_context *ctx, fz_document_writer *wri_)
{
 fz_pixmap_writer *wri = (fz_pixmap_writer*)wri_;
 fz_drop_pixmap(ctx, wri->pixmap);
 fz_free(ctx, wri->path);
}
