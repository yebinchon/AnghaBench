
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahx {int chain; } ;
typedef int fz_context ;


 int fz_write_byte (int *,int ,char) ;

__attribute__((used)) static void ahx_close(fz_context *ctx, void *opaque)
{
 struct ahx *state = opaque;
 fz_write_byte(ctx, state->chain, '>');
}
