
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * out; } ;
struct TYPE_4__ {TYPE_1__ super; } ;
typedef TYPE_2__ psd_band_writer ;
typedef int fz_output ;
typedef int fz_context ;
typedef int fz_band_writer ;



__attribute__((used)) static void
psd_write_trailer(fz_context *ctx, fz_band_writer *writer_)
{
 psd_band_writer *writer = (psd_band_writer *)(void *)writer_;
 fz_output *out = writer->super.out;

 (void)out;
 (void)writer;
}
