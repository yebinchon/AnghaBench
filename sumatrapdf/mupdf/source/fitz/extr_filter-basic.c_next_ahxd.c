
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char* rp; unsigned char* wp; int pos; TYPE_2__* state; } ;
typedef TYPE_1__ fz_stream ;
typedef int fz_context ;
struct TYPE_5__ {unsigned char* buffer; int eod; int chain; } ;
typedef TYPE_2__ fz_ahxd ;


 int EOF ;
 int FZ_ERROR_GENERIC ;
 int fz_read_byte (int *,int ) ;
 int fz_throw (int *,int ,char*,int) ;
 scalar_t__ ishex (int) ;
 int iswhite (int) ;
 int unhex (int) ;

__attribute__((used)) static int
next_ahxd(fz_context *ctx, fz_stream *stm, size_t max)
{
 fz_ahxd *state = stm->state;
 unsigned char *p = state->buffer;
 unsigned char *ep;
 int a, b, c, odd;

 if (max > sizeof(state->buffer))
  max = sizeof(state->buffer);
 ep = p + max;

 odd = 0;

 while (p < ep)
 {
  if (state->eod)
   break;

  c = fz_read_byte(ctx, state->chain);
  if (c < 0)
   break;

  if (ishex(c))
  {
   if (!odd)
   {
    a = unhex(c);
    odd = 1;
   }
   else
   {
    b = unhex(c);
    *p++ = (a << 4) | b;
    odd = 0;
   }
  }
  else if (c == '>')
  {
   if (odd)
    *p++ = (a << 4);
   state->eod = 1;
   break;
  }
  else if (!iswhite(c))
  {
   fz_throw(ctx, FZ_ERROR_GENERIC, "bad data in ahxd: '%c'", c);
  }
 }
 stm->rp = state->buffer;
 stm->wp = p;
 stm->pos += p - state->buffer;

 if (stm->rp != p)
  return *stm->rp++;
 return EOF;
}
