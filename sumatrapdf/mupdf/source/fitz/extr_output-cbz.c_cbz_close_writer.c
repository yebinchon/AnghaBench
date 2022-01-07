
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fz_document_writer ;
typedef int fz_context ;
struct TYPE_2__ {int zip; } ;
typedef TYPE_1__ fz_cbz_writer ;


 int fz_close_zip_writer (int *,int ) ;

__attribute__((used)) static void
cbz_close_writer(fz_context *ctx, fz_document_writer *wri_)
{
 fz_cbz_writer *wri = (fz_cbz_writer*)wri_;
 fz_close_zip_writer(ctx, wri->zip);
}
