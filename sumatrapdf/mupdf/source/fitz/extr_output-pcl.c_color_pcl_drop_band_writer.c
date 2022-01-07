
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fz_context ;
typedef int fz_band_writer ;
struct TYPE_2__ {int linebuf; } ;
typedef TYPE_1__ color_pcl_band_writer ;


 int fz_free (int *,int ) ;

__attribute__((used)) static void
color_pcl_drop_band_writer(fz_context *ctx, fz_band_writer *writer_)
{
 color_pcl_band_writer *writer = (color_pcl_band_writer *)writer_;
 fz_free(ctx, writer->linebuf);
}
