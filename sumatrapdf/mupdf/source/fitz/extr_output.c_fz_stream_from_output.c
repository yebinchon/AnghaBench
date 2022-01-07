
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_stream ;
struct TYPE_4__ {int state; int * (* as_stream ) (int *,int ) ;} ;
typedef TYPE_1__ fz_output ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_flush_output (int *,TYPE_1__*) ;
 int fz_throw (int *,int ,char*) ;
 int * stub1 (int *,int ) ;

fz_stream *
fz_stream_from_output(fz_context *ctx, fz_output *out)
{
 if (out->as_stream == ((void*)0))
  fz_throw(ctx, FZ_ERROR_GENERIC, "Cannot derive input stream from output stream");
 fz_flush_output(ctx, out);
 return out->as_stream(ctx, out->state);
}
