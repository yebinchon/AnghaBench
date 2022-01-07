
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_4__ {int wp; int rp; int pos; TYPE_2__* state; } ;
typedef TYPE_1__ fz_stream ;
struct TYPE_5__ {int buffer; int file; } ;
typedef TYPE_2__ fz_file_stream ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 scalar_t__ _fseeki64 (int ,scalar_t__,int) ;
 int _ftelli64 (int ) ;
 int errno ;
 scalar_t__ fseeko (int ,scalar_t__,int) ;
 int ftello (int ) ;
 int fz_throw (int *,int ,char*,int ) ;
 int strerror (int ) ;

__attribute__((used)) static void seek_file(fz_context *ctx, fz_stream *stm, int64_t offset, int whence)
{
 fz_file_stream *state = stm->state;



 int64_t n = fseeko(state->file, offset, whence);

 if (n < 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot seek: %s", strerror(errno));



 stm->pos = ftello(state->file);

 stm->rp = state->buffer;
 stm->wp = state->buffer;
}
