
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct null_filter {int chain; } ;
typedef int fz_context ;


 int fz_drop_stream (int *,int ) ;
 int fz_free (int *,struct null_filter*) ;

__attribute__((used)) static void
close_null(fz_context *ctx, void *state_)
{
 struct null_filter *state = (struct null_filter *)state_;
 fz_drop_stream(ctx, state->chain);
 fz_free(ctx, state);
}
