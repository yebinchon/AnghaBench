
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct deflate {int z; } ;
typedef int fz_context ;


 int deflateEnd (int *) ;
 int fz_free (int *,struct deflate*) ;

__attribute__((used)) static void deflate_drop(fz_context *ctx, void *opaque)
{
 struct deflate *state = opaque;
 (void)deflateEnd(&state->z);
 fz_free(ctx, state);
}
