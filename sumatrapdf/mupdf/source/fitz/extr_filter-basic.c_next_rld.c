
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char* rp; unsigned char* wp; int pos; TYPE_2__* state; } ;
typedef TYPE_1__ fz_stream ;
struct TYPE_5__ {unsigned char* buffer; int run; int n; void* c; int chain; } ;
typedef TYPE_2__ fz_rld ;
typedef int fz_context ;


 int EOF ;
 int FZ_ERROR_GENERIC ;
 void* fz_read_byte (int *,int ) ;
 int fz_throw (int *,int ,char*) ;

__attribute__((used)) static int
next_rld(fz_context *ctx, fz_stream *stm, size_t max)
{
 fz_rld *state = stm->state;
 unsigned char *p = state->buffer;
 unsigned char *ep;

 if (state->run == 128)
  return EOF;

 if (max > sizeof(state->buffer))
  max = sizeof(state->buffer);
 ep = p + max;

 while (p < ep)
 {
  if (state->run == 128)
   break;

  if (state->n == 0)
  {
   state->run = fz_read_byte(ctx, state->chain);
   if (state->run < 0)
   {
    state->run = 128;
    break;
   }
   if (state->run < 128)
    state->n = state->run + 1;
   if (state->run > 128)
   {
    state->n = 257 - state->run;
    state->c = fz_read_byte(ctx, state->chain);
    if (state->c < 0)
     fz_throw(ctx, FZ_ERROR_GENERIC, "premature end of data in run length decode");
   }
  }

  if (state->run < 128)
  {
   while (p < ep && state->n)
   {
    int c = fz_read_byte(ctx, state->chain);
    if (c < 0)
     fz_throw(ctx, FZ_ERROR_GENERIC, "premature end of data in run length decode");
    *p++ = c;
    state->n--;
   }
  }

  if (state->run > 128)
  {
   while (p < ep && state->n)
   {
    *p++ = state->c;
    state->n--;
   }
  }
 }

 stm->rp = state->buffer;
 stm->wp = p;
 stm->pos += p - state->buffer;

 if (p == stm->rp)
  return EOF;

 return *stm->rp++;
}
