
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_3__ {int chain; } ;
typedef TYPE_1__ fz_a85d ;


 int fz_drop_stream (int *,int ) ;
 int fz_free (int *,TYPE_1__*) ;

__attribute__((used)) static void
close_a85d(fz_context *ctx, void *state_)
{
 fz_a85d *state = (fz_a85d *)state_;
 fz_drop_stream(ctx, state->chain);
 fz_free(ctx, state);
}
