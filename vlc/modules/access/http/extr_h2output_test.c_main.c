
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_h2_output {int dummy; } ;


 int VLC_TICK_FROM_MS (int) ;
 int assert (int) ;
 int counter ;
 int expect_hello ;
 int fake_tls ;
 int * frame (unsigned char) ;
 int * frame_list (int *,int *,int *,int *) ;
 int rx ;
 int send_failure ;
 struct vlc_h2_output* vlc_h2_output_create (int *,int) ;
 int vlc_h2_output_destroy (struct vlc_h2_output*) ;
 int vlc_h2_output_send (struct vlc_h2_output*,int *) ;
 int vlc_h2_output_send_prio (struct vlc_h2_output*,int *) ;
 int vlc_sem_destroy (int *) ;
 int vlc_sem_init (int *,int ) ;
 int vlc_sem_wait (int *) ;
 int vlc_tick_sleep (int ) ;

int main(void)
{
    struct vlc_h2_output *out;


    out = vlc_h2_output_create(&fake_tls, 0);
    assert(out != ((void*)0));
    vlc_h2_output_destroy(out);

    vlc_sem_init(&rx, 0);
    out = vlc_h2_output_create(&fake_tls, expect_hello = 1);
    assert(out != ((void*)0));
    vlc_h2_output_destroy(out);
    vlc_sem_destroy(&rx);


    vlc_sem_init(&rx, 0);
    out = vlc_h2_output_create(&fake_tls, 0);
    assert(out != ((void*)0));
    assert(vlc_h2_output_send_prio(out, ((void*)0)) == -1);
    assert(vlc_h2_output_send_prio(out, frame(0)) == 0);
    assert(vlc_h2_output_send_prio(out, frame(1)) == 0);
    assert(vlc_h2_output_send(out, ((void*)0)) == -1);
    assert(vlc_h2_output_send(out, frame(2)) == 0);
    assert(vlc_h2_output_send(out, frame(3)) == 0);
    assert(vlc_h2_output_send(out, frame_list(frame(4), frame(5),
                                              frame(6), ((void*)0))) == 0);
    assert(vlc_h2_output_send(out, frame(7)) == 0);
    for (unsigned i = 0; i < 8; i++)
        vlc_sem_wait(&rx);

    assert(vlc_h2_output_send_prio(out, frame(8)) == 0);
    assert(vlc_h2_output_send(out, frame(9)) == 0);

    vlc_h2_output_destroy(out);
    vlc_sem_destroy(&rx);


    send_failure = 1;

    vlc_sem_init(&rx, 0);
    counter = 10;
    out = vlc_h2_output_create(&fake_tls, 0);
    assert(out != ((void*)0));

    assert(vlc_h2_output_send(out, frame(10)) == 0);
    for (unsigned char i = 11; vlc_h2_output_send(out, frame(i)) == 0; i++)
        vlc_tick_sleep(VLC_TICK_FROM_MS(100));
    assert(vlc_h2_output_send(out, frame(0)) == -1);
    assert(vlc_h2_output_send_prio(out, frame(0)) == -1);
    vlc_h2_output_destroy(out);
    vlc_sem_destroy(&rx);


    vlc_sem_init(&rx, 0);
    counter = 0;
    out = vlc_h2_output_create(&fake_tls, expect_hello = 1);
    assert(out != ((void*)0));
    vlc_sem_wait(&rx);

    for (unsigned char i = 1; vlc_h2_output_send_prio(out, frame(i)) == 0; i++)
        vlc_tick_sleep(VLC_TICK_FROM_MS(100));
    assert(vlc_h2_output_send(out, frame(0)) == -1);
    assert(vlc_h2_output_send_prio(out, frame(0)) == -1);
    vlc_h2_output_destroy(out);
    vlc_sem_destroy(&rx);

    return 0;
}
