
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_3__ {scalar_t__ pos; scalar_t__ wp; scalar_t__ rp; } ;
typedef TYPE_1__ fz_stream ;
typedef int fz_context ;



__attribute__((used)) static void seek_buffer(fz_context *ctx, fz_stream *stm, int64_t offset, int whence)
{
 int64_t pos = stm->pos - (stm->wp - stm->rp);

 if (whence == 1)
 {
  offset += pos;
 }
 else if (whence == 2)
 {
  offset += stm->pos;
 }

 if (offset < 0)
  offset = 0;
 if (offset > stm->pos)
  offset = stm->pos;
 stm->rp += (int)(offset - pos);
}
