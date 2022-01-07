
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct concat_filter {scalar_t__ count; scalar_t__ max; TYPE_1__** chain; } ;
struct TYPE_5__ {scalar_t__ state; } ;
typedef TYPE_1__ fz_stream ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_drop_stream (int *,TYPE_1__*) ;
 int fz_throw (int *,int ,char*) ;

void
fz_concat_push_drop(fz_context *ctx, fz_stream *concat, fz_stream *chain)
{
 struct concat_filter *state = (struct concat_filter *)concat->state;

 if (state->count == state->max)
 {
  fz_drop_stream(ctx, chain);
  fz_throw(ctx, FZ_ERROR_GENERIC, "Concat filter size exceeded");
 }

 state->chain[state->count++] = chain;
}
