
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a85 {int chain; } ;
typedef int fz_context ;


 int a85_flush (int *,struct a85*) ;
 int fz_write_byte (int *,int ,char) ;

__attribute__((used)) static void a85_close(fz_context *ctx, void *opaque)
{
 struct a85 *state = opaque;
 a85_flush(ctx, state);
 fz_write_byte(ctx, state->chain, '~');
 fz_write_byte(ctx, state->chain, '>');
}
