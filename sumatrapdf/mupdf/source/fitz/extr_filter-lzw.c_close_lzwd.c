
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chain; } ;
typedef TYPE_1__ fz_lzwd ;
typedef int fz_context ;


 int fz_drop_stream (int *,int ) ;
 int fz_free (int *,TYPE_1__*) ;
 int fz_sync_bits (int *,int ) ;

__attribute__((used)) static void
close_lzwd(fz_context *ctx, void *state_)
{
 fz_lzwd *lzw = (fz_lzwd *)state_;
 fz_sync_bits(ctx, lzw->chain);
 fz_drop_stream(ctx, lzw->chain);
 fz_free(ctx, lzw);
}
