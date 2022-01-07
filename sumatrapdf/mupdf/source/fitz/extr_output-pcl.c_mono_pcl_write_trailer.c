
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int features; } ;
struct TYPE_4__ {int * out; } ;
struct TYPE_6__ {TYPE_2__ options; TYPE_1__ super; } ;
typedef TYPE_3__ mono_pcl_band_writer ;
typedef int fz_output ;
typedef int fz_context ;
typedef int fz_band_writer ;


 int HACK__IS_A_OCE9050 ;
 int fz_write_string (int *,int *,char*) ;

__attribute__((used)) static void
mono_pcl_write_trailer(fz_context *ctx, fz_band_writer *writer_)
{
 mono_pcl_band_writer *writer = (mono_pcl_band_writer *)writer_;
 fz_output *out = writer->super.out;


 fz_write_string(ctx, out, "\033*rB\f");

 if (writer->options.features & HACK__IS_A_OCE9050)
 {

  fz_write_string(ctx, out, "\033%1BPUSP0PG;\033E");
 }
}
