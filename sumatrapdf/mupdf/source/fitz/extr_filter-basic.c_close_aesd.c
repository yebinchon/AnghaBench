
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_3__ {int chain; } ;
typedef TYPE_1__ fz_aesd ;


 int fz_drop_stream (int *,int ) ;
 int fz_free (int *,TYPE_1__*) ;

__attribute__((used)) static void
close_aesd(fz_context *ctx, void *state_)
{
 fz_aesd *state = (fz_aesd *)state_;
 fz_drop_stream(ctx, state->chain);
 fz_free(ctx, state);
}
