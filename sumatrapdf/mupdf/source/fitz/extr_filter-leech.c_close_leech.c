
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buffer; int chain; } ;
typedef TYPE_1__ fz_leech ;
typedef int fz_context ;


 int fz_drop_buffer (int *,int ) ;
 int fz_drop_stream (int *,int ) ;
 int fz_free (int *,TYPE_1__*) ;

__attribute__((used)) static void
close_leech(fz_context *ctx, void *state_)
{
 fz_leech *state = (fz_leech *)state_;
 fz_drop_stream(ctx, state->chain);
 fz_drop_buffer(ctx, state->buffer);
 fz_free(ctx, state);
}
