
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* temp; int chain; } ;
typedef TYPE_1__ fz_sgilog32 ;
typedef int fz_context ;


 int fz_drop_stream (int *,int ) ;
 int fz_free (int *,TYPE_1__*) ;

__attribute__((used)) static void
close_sgilog32(fz_context *ctx, void *state_)
{
 fz_sgilog32 *state = (fz_sgilog32 *)state_;
 fz_drop_stream(ctx, state->chain);
 fz_free(ctx, state->temp);
 fz_free(ctx, state);
}
