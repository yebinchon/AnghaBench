
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int file; } ;
typedef TYPE_1__ fz_file_stream ;
typedef int fz_context ;


 int errno ;
 int fclose (int ) ;
 int fz_free (int *,TYPE_1__*) ;
 int fz_warn (int *,char*,int ) ;
 int strerror (int ) ;

__attribute__((used)) static void drop_file(fz_context *ctx, void *state_)
{
 fz_file_stream *state = state_;
 int n = fclose(state->file);
 if (n < 0)
  fz_warn(ctx, "close error: %s", strerror(errno));
 fz_free(ctx, state);
}
