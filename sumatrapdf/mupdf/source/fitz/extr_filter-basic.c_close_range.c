
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct range_filter {struct range_filter* ranges; int chain; } ;
typedef int fz_context ;


 int fz_drop_stream (int *,int ) ;
 int fz_free (int *,struct range_filter*) ;

__attribute__((used)) static void
close_range(fz_context *ctx, void *state_)
{
 struct range_filter *state = (struct range_filter *)state_;
 fz_drop_stream(ctx, state->chain);
 fz_free(ctx, state->ranges);
 fz_free(ctx, state);
}
