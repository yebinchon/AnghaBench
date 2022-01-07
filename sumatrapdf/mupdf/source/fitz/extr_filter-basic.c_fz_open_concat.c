
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct concat_filter {int max; int pad; int ws_buf; scalar_t__ current; scalar_t__ count; } ;
typedef int fz_stream ;
typedef int fz_context ;


 int close_concat ;
 struct concat_filter* fz_calloc (int *,int,int) ;
 int * fz_new_stream (int *,struct concat_filter*,int ,int ) ;
 int next_concat ;

fz_stream *
fz_open_concat(fz_context *ctx, int len, int pad)
{
 struct concat_filter *state;

 state = fz_calloc(ctx, 1, sizeof(struct concat_filter) + (len-1)*sizeof(fz_stream *));
 state->max = len;
 state->count = 0;
 state->current = 0;
 state->pad = pad;
 state->ws_buf = 32;

 return fz_new_stream(ctx, state, next_concat, close_concat);
}
