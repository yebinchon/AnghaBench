
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_3__ {scalar_t__ rp; scalar_t__ wp; scalar_t__ pos; } ;
typedef TYPE_1__ fz_stream ;
typedef int fz_context ;



int64_t
fz_tell(fz_context *ctx, fz_stream *stm)
{
 return stm->pos - (stm->wp - stm->rp);
}
