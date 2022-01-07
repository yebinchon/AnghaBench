
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int msg; } ;
struct TYPE_4__ {int chain; TYPE_2__ z; } ;
typedef TYPE_1__ fz_inflate_state ;
typedef int fz_context ;


 int Z_OK ;
 int fz_drop_stream (int *,int ) ;
 int fz_free (int *,TYPE_1__*) ;
 int fz_warn (int *,char*,int ) ;
 int inflateEnd (TYPE_2__*) ;

__attribute__((used)) static void
close_flated(fz_context *ctx, void *state_)
{
 fz_inflate_state *state = (fz_inflate_state *)state_;
 int code;

 code = inflateEnd(&state->z);
 if (code != Z_OK)
  fz_warn(ctx, "zlib error: inflateEnd: %s", state->z.msg);

 fz_drop_stream(ctx, state->chain);
 fz_free(ctx, state);
}
