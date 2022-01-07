
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctx {int player; } ;


 int VLC_SUCCESS ;
 int assert (int) ;
 int vlc_player_Start (int ) ;

__attribute__((used)) static void
player_start(struct ctx *ctx)
{
    int ret = vlc_player_Start(ctx->player);
    assert(ret == VLC_SUCCESS);
}
