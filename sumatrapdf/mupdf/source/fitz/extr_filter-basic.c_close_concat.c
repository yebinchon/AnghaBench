
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct concat_filter {int current; int count; int * chain; } ;
typedef int fz_context ;


 int fz_drop_stream (int *,int ) ;
 int fz_free (int *,struct concat_filter*) ;

__attribute__((used)) static void
close_concat(fz_context *ctx, void *state_)
{
 struct concat_filter *state = (struct concat_filter *)state_;
 int i;

 for (i = state->current; i < state->count; i++)
 {
  fz_drop_stream(ctx, state->chain[i]);
 }
 fz_free(ctx, state);
}
