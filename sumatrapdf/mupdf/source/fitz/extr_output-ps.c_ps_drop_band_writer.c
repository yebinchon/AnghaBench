
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int output; int input; int stream; int stream_ended; } ;
typedef TYPE_1__ ps_band_writer ;
typedef int fz_context ;
typedef int fz_band_writer ;


 int Z_OK ;
 int deflateEnd (int *) ;
 int fz_free (int *,int ) ;
 int fz_warn (int *,char*,int) ;

__attribute__((used)) static void
ps_drop_band_writer(fz_context *ctx, fz_band_writer *writer_)
{
 ps_band_writer *writer = (ps_band_writer *)writer_;

 if (!writer->stream_ended)
 {
  int err = deflateEnd(&writer->stream);
  if (err != Z_OK)
   fz_warn(ctx, "ignoring compression error %d", err);
 }

 fz_free(ctx, writer->input);
 fz_free(ctx, writer->output);
}
