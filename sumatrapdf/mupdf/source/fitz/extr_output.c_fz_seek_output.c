
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_4__ {int state; int (* seek ) (int *,int ,int ,int) ;} ;
typedef TYPE_1__ fz_output ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_flush_output (int *,TYPE_1__*) ;
 int fz_throw (int *,int ,char*) ;
 int stub1 (int *,int ,int ,int) ;

void
fz_seek_output(fz_context *ctx, fz_output *out, int64_t off, int whence)
{
 if (out->seek == ((void*)0))
  fz_throw(ctx, FZ_ERROR_GENERIC, "Cannot seek in unseekable output stream\n");
 fz_flush_output(ctx, out);
 out->seek(ctx, out->state, off, whence);
}
