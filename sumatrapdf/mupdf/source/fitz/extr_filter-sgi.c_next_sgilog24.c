
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int * rp; int pos; int * wp; TYPE_2__* state; } ;
typedef TYPE_1__ fz_stream ;
struct TYPE_5__ {int err; int w; int * temp; int chain; } ;
typedef TYPE_2__ fz_sgilog24 ;
typedef int fz_context ;


 int EOF ;
 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;
 int memset (int *,int ,int) ;
 int sgilog24val (int *,int ,int *) ;

__attribute__((used)) static int
next_sgilog24(fz_context *ctx, fz_stream *stm, size_t max)
{
 fz_sgilog24 *state = stm->state;
 uint8_t *p;
 uint8_t *ep;

 (void)max;

 if (state->err)
  return EOF;

 memset(state->temp, 0, state->w * 3);

 p = state->temp;
 ep = p + state->w * 3;
 while (p < ep)
 {
  int c = sgilog24val(ctx, state->chain, p);
  if (c < 0)
  {
   state->err = 1;
   fz_throw(ctx, FZ_ERROR_GENERIC, "premature end of data in run length decode");
  }
  p += 3;
 }

 stm->rp = state->temp;
 stm->wp = p;
 stm->pos += p - stm->rp;

 if (p == stm->rp)
  return EOF;

 return *stm->rp++;
}
