
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uInt ;
struct TYPE_7__ {scalar_t__ avail_out; int * next_out; scalar_t__ avail_in; int * next_in; } ;
struct TYPE_5__ {int * out; } ;
struct TYPE_6__ {int stream_ended; TYPE_3__ stream; scalar_t__ output_size; scalar_t__ output; TYPE_1__ super; } ;
typedef TYPE_2__ ps_band_writer ;
typedef int fz_output ;
typedef int fz_context ;
typedef int fz_band_writer ;
typedef int Bytef ;


 int FZ_ERROR_GENERIC ;
 int Z_FINISH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int deflate (TYPE_3__*,int ) ;
 int deflateEnd (TYPE_3__*) ;
 int fz_throw (int *,int ,char*,int) ;
 int fz_write_data (int *,int *,scalar_t__,scalar_t__) ;
 int fz_write_string (int *,int *,char*) ;

__attribute__((used)) static void
ps_write_trailer(fz_context *ctx, fz_band_writer *writer_)
{
 ps_band_writer *writer = (ps_band_writer *)writer_;
 fz_output *out = writer->super.out;
 int err;

 writer->stream.next_in = ((void*)0);
 writer->stream.avail_in = 0;
 writer->stream.next_out = (Bytef*)writer->output;
 writer->stream.avail_out = (uInt)writer->output_size;

 err = deflate(&writer->stream, Z_FINISH);
 if (err != Z_STREAM_END)
  fz_throw(ctx, FZ_ERROR_GENERIC, "compression error %d", err);
 writer->stream_ended = 1;
 err = deflateEnd(&writer->stream);
 if (err != Z_OK)
  fz_throw(ctx, FZ_ERROR_GENERIC, "compression error %d", err);

 fz_write_data(ctx, out, writer->output, writer->output_size - writer->stream.avail_out);
 fz_write_string(ctx, out, "\nshowpage\n%%%%PageTrailer\n%%%%EndPageTrailer\n\n");
}
