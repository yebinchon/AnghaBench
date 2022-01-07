
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a85 {int dummy; } ;
typedef int fz_context ;


 int fz_free (int *,struct a85*) ;

__attribute__((used)) static void a85_drop(fz_context *ctx, void *opaque)
{
 struct a85 *state = opaque;
 fz_free(ctx, state);
}
