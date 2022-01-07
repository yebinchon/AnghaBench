
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int file; } ;
typedef TYPE_1__ prog_state ;
typedef int fz_context ;


 int errno ;
 int fclose (int ) ;
 int fz_free (int *,void*) ;
 int fz_warn (int *,char*,int ) ;
 int strerror (int ) ;

__attribute__((used)) static void close_prog(fz_context *ctx, void *state)
{
 prog_state *ps = (prog_state *)state;
 int n = fclose(ps->file);
 if (n < 0)
  fz_warn(ctx, "cannot fclose: %s", strerror(errno));
 fz_free(ctx, state);
}
