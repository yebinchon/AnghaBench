
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int psd_band_writer ;
typedef int fz_context ;
typedef int fz_band_writer ;



__attribute__((used)) static void
psd_drop_band_writer(fz_context *ctx, fz_band_writer *writer_)
{
 psd_band_writer *writer = (psd_band_writer *)(void *)writer_;

 (void)writer;
}
