
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* buffer; int chain; } ;
typedef TYPE_1__ fz_thunder ;
typedef int fz_context ;


 int fz_drop_stream (int *,int ) ;
 int fz_free (int *,TYPE_1__*) ;

__attribute__((used)) static void
close_thunder(fz_context *ctx, void *state_)
{
 fz_thunder *state = (fz_thunder *)state_;
 fz_drop_stream(ctx, state->chain);
 fz_free(ctx, state->buffer);
 fz_free(ctx, state);
}
