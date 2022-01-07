
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int out; int * bander; } ;
typedef TYPE_1__ fz_pclm_writer ;
typedef int fz_document_writer ;
typedef int fz_context ;


 int fz_close_output (int *,int ) ;
 int fz_drop_band_writer (int *,int *) ;

__attribute__((used)) static void
pclm_close_writer(fz_context *ctx, fz_document_writer *wri_)
{
 fz_pclm_writer *wri = (fz_pclm_writer*)wri_;

 fz_drop_band_writer(ctx, wri->bander);
 wri->bander = ((void*)0);

 fz_close_output(ctx, wri->out);
}
