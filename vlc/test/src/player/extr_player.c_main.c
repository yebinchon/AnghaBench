
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctx {TYPE_1__* vlc; } ;
struct TYPE_2__ {int p_libvlc_int; } ;


 int VLC_OBJECT (int ) ;
 int ctx_destroy (struct ctx*) ;
 int ctx_init (struct ctx*,int) ;
 int test_capabilities_pause (struct ctx*) ;
 int test_capabilities_seek (struct ctx*) ;
 int test_delete_while_playback (int ,int) ;
 int test_error (struct ctx*) ;
 int test_init () ;
 int test_next_media (struct ctx*) ;
 int test_no_outputs (struct ctx*) ;
 int test_outputs (struct ctx*) ;
 int test_pause (struct ctx*) ;
 int test_programs (struct ctx*) ;
 int test_seeks (struct ctx*) ;
 int test_set_current_media (struct ctx*) ;
 int test_timers (struct ctx*) ;
 int test_titles (struct ctx*,int) ;
 int test_tracks (struct ctx*,int) ;
 int test_unknown_uri (struct ctx*) ;

int
main(void)
{
    test_init();

    struct ctx ctx;


    ctx_init(&ctx, 0);
    test_no_outputs(&ctx);
    ctx_destroy(&ctx);
    ctx_init(&ctx, 1);

    test_outputs(&ctx);

    test_set_current_media(&ctx);
    test_next_media(&ctx);
    test_seeks(&ctx);
    test_pause(&ctx);
    test_capabilities_pause(&ctx);
    test_capabilities_seek(&ctx);
    test_error(&ctx);
    test_unknown_uri(&ctx);
    test_titles(&ctx, 1);
    test_titles(&ctx, 0);
    test_tracks(&ctx, 1);
    test_tracks(&ctx, 0);
    test_programs(&ctx);
    test_timers(&ctx);

    test_delete_while_playback(VLC_OBJECT(ctx.vlc->p_libvlc_int), 1);
    test_delete_while_playback(VLC_OBJECT(ctx.vlc->p_libvlc_int), 0);

    ctx_destroy(&ctx);
    return 0;
}
