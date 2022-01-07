
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct endstream_filter {size_t remain; size_t offset; unsigned char* buffer; size_t extras; int size; int warned; TYPE_3__* chain; } ;
struct TYPE_5__ {unsigned char* rp; unsigned char* wp; size_t pos; int eof; struct endstream_filter* state; } ;
typedef TYPE_1__ fz_stream ;
typedef int fz_context ;
struct TYPE_6__ {int rp; } ;


 int EOF ;
 size_t fz_available (int *,TYPE_3__*,size_t) ;
 unsigned char* fz_memmem (unsigned char*,size_t,char*,int) ;
 int fz_seek (int *,TYPE_3__*,size_t,int ) ;
 int fz_warn (int *,char*) ;
 int memcpy (unsigned char*,int ,size_t) ;
 int memmove (unsigned char*,unsigned char*,size_t) ;

__attribute__((used)) static int
next_endstream(fz_context *ctx, fz_stream *stm, size_t max)
{
 struct endstream_filter *state = stm->state;
 size_t n, nbytes_in_buffer, size;
 unsigned char *rp;

 if (state->remain == 0)
  goto look_for_endstream;

 fz_seek(ctx, state->chain, state->offset, 0);
 n = fz_available(ctx, state->chain, max);
 if (n == 0)
  return EOF;
 if (n > state->remain)
  n = state->remain;
 if (n > sizeof(state->buffer))
  n = sizeof(state->buffer);
 memcpy(state->buffer, state->chain->rp, n);
 stm->rp = state->buffer;
 stm->wp = stm->rp + n;
 state->chain->rp += n;
 state->remain -= n;
 state->offset += n;
 stm->pos += n;
 return *stm->rp++;

look_for_endstream:
 nbytes_in_buffer = state->extras;
 if (nbytes_in_buffer)
  memmove(state->buffer, stm->rp, nbytes_in_buffer);
 stm->rp = state->buffer;
 stm->wp = stm->rp + nbytes_in_buffer;





 size = state->size * 2;
 if (size > sizeof(state->buffer))
  size = sizeof(state->buffer);
 state->size = size;


 fz_seek(ctx, state->chain, state->offset, 0);
 while (nbytes_in_buffer < size)
 {
  n = fz_available(ctx, state->chain, size - nbytes_in_buffer);
  if (n == 0)
   break;
  if (n > size - nbytes_in_buffer)
   n = size - nbytes_in_buffer;
  memcpy(stm->wp, state->chain->rp, n);
  stm->wp += n;
  state->chain->rp += n;
  nbytes_in_buffer += n;
  state->offset += n;
 }


 rp = fz_memmem(state->buffer, nbytes_in_buffer, "endstream", 9);
 if (rp)
 {

  if (rp > state->buffer && rp[-1] == '\n') --rp;
  if (rp > state->buffer && rp[-1] == '\r') --rp;
  n = rp - state->buffer;
  stm->eof = 1;
 }
 else if (nbytes_in_buffer > 11)
  n = nbytes_in_buffer - 11;
 else
  n = nbytes_in_buffer;


 state->extras = nbytes_in_buffer - n;
 stm->wp = stm->rp + n;
 stm->pos += n;

 if (n == 0)
  return EOF;

 if (!state->warned)
 {
  state->warned = 1;
  fz_warn(ctx, "PDF stream Length incorrect");
 }
 return *stm->rp++;
}
