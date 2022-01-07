
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * out; } ;
struct TYPE_4__ {int stream_ended; int stream; TYPE_1__ super; } ;
typedef TYPE_2__ png_band_writer ;
typedef int fz_output ;
typedef int fz_context ;
typedef int fz_band_writer ;


 int FZ_ERROR_GENERIC ;
 int Z_OK ;
 int deflateEnd (int *) ;
 int fz_throw (int *,int ,char*,int) ;
 int putchunk (int *,int *,char*,unsigned char*,int ) ;

__attribute__((used)) static void
png_write_trailer(fz_context *ctx, fz_band_writer *writer_)
{
 png_band_writer *writer = (png_band_writer *)(void *)writer_;
 fz_output *out = writer->super.out;
 unsigned char block[1];
 int err;

 writer->stream_ended = 1;
 err = deflateEnd(&writer->stream);
 if (err != Z_OK)
  fz_throw(ctx, FZ_ERROR_GENERIC, "compression error %d", err);

 putchunk(ctx, out, "IEND", block, 0);
}
