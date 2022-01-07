
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode3buf; int mode2buf; int prev; } ;
typedef TYPE_1__ mono_pcl_band_writer ;
typedef int fz_context ;
typedef int fz_band_writer ;


 int fz_free (int *,int ) ;

__attribute__((used)) static void
mono_pcl_drop_band_writer(fz_context *ctx, fz_band_writer *writer_)
{
 mono_pcl_band_writer *writer = (mono_pcl_band_writer *)writer_;

 fz_free(ctx, writer->prev);
 fz_free(ctx, writer->mode2buf);
 fz_free(ctx, writer->mode3buf);
}
