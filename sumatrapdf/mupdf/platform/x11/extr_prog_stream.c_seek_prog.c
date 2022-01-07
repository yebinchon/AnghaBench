
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int file; scalar_t__ length; } ;
typedef TYPE_1__ prog_state ;
typedef scalar_t__ int64_t ;
struct TYPE_5__ {int rp; int wp; scalar_t__ pos; scalar_t__ state; } ;
typedef TYPE_2__ fz_stream ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int SEEK_CUR ;
 int SEEK_END ;
 int SEEK_SET ;
 int errno ;
 scalar_t__ fseek (int ,scalar_t__,int) ;
 int fz_throw (int *,int ,char*,int ) ;
 int strerror (int ) ;

__attribute__((used)) static void seek_prog(fz_context *ctx, fz_stream *stm, int64_t offset, int whence)
{
 prog_state *ps = (prog_state *)stm->state;

 if (whence == SEEK_END)
 {
  whence = SEEK_SET;
  offset += ps->length;
 }
 else if (whence == SEEK_CUR)
 {
  whence = SEEK_SET;
  offset += stm->pos;
 }

 if (fseek(ps->file, offset, whence) != 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot seek: %s", strerror(errno));
 stm->pos = offset;
 stm->wp = stm->rp;
}
