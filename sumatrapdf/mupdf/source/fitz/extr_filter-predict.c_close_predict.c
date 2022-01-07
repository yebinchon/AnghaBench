
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* ref; struct TYPE_3__* out; struct TYPE_3__* in; int chain; } ;
typedef TYPE_1__ fz_predict ;
typedef int fz_context ;


 int fz_drop_stream (int *,int ) ;
 int fz_free (int *,TYPE_1__*) ;

__attribute__((used)) static void
close_predict(fz_context *ctx, void *state_)
{
 fz_predict *state = (fz_predict *)state_;
 fz_drop_stream(ctx, state->chain);
 fz_free(ctx, state->in);
 fz_free(ctx, state->out);
 fz_free(ctx, state->ref);
 fz_free(ctx, state);
}
