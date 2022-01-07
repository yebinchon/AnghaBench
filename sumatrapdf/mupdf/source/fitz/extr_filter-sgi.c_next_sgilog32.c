
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int * rp; int pos; int * wp; TYPE_2__* state; } ;
typedef TYPE_1__ fz_stream ;
struct TYPE_5__ {int run; int w; int n; int c; int * temp; int chain; } ;
typedef TYPE_2__ fz_sgilog32 ;
typedef int fz_context ;


 int EOF ;
 int FZ_ERROR_GENERIC ;
 void* fz_read_byte (int *,int ) ;
 int fz_throw (int *,int ,char*) ;
 int memset (int *,int ,int) ;
 int sgilog32val (int *,int ,int *) ;

__attribute__((used)) static int
next_sgilog32(fz_context *ctx, fz_stream *stm, size_t max)
{
 fz_sgilog32 *state = stm->state;
 uint32_t *p;
 uint32_t *ep;
 uint8_t *q;
 int shift;

 (void)max;

 if (state->run < 0)
  return EOF;

 memset(state->temp, 0, state->w * sizeof(uint32_t));

 for (shift = 24; shift >= 0; shift -= 8)
 {
  p = state->temp;
  ep = p + state->w;
  while (p < ep)
  {
   if (state->n == 0)
   {
    state->run = fz_read_byte(ctx, state->chain);
    if (state->run < 0)
    {
     state->run = -1;
     fz_throw(ctx, FZ_ERROR_GENERIC, "premature end of data in run length decode");
    }
    if (state->run < 128)
     state->n = state->run;
    else
    {
     state->n = state->run - 126;
     state->c = fz_read_byte(ctx, state->chain);
     if (state->c < 0)
     {
      state->run = -1;
      fz_throw(ctx, FZ_ERROR_GENERIC, "premature end of data in run length decode");
     }
    }
   }

   if (state->run < 128)
   {
    while (p < ep && state->n)
    {
     int c = fz_read_byte(ctx, state->chain);
     if (c < 0)
     {
      state->run = -1;
      fz_throw(ctx, FZ_ERROR_GENERIC, "premature end of data in run length decode");
     }
     *p++ |= c<<shift;
     state->n--;
    }
   }
   else
   {
    while (p < ep && state->n)
    {
     *p++ |= state->c<<shift;
     state->n--;
    }
   }
  }
 }

 p = state->temp;
 q = (uint8_t *)p;
 ep = p + state->w;
 while (p < ep)
 {
  sgilog32val(ctx, *p++, q);
  q += 3;
 }

 stm->rp = (uint8_t *)(state->temp);
 stm->wp = q;
 stm->pos += q - stm->rp;

 if (q == stm->rp)
  return EOF;

 return *stm->rp++;
}
