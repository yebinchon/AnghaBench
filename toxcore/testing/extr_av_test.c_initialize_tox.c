
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct Tox_Options {int ipv6_enabled; int start_port; scalar_t__ end_port; } ;
typedef int ToxAV ;
typedef int Tox ;
typedef scalar_t__ TOX_ERR_NEW ;
typedef scalar_t__ TOXAV_ERR_NEW ;
typedef int CallControl ;


 scalar_t__ TOXAV_ERR_NEW_OK ;
 int TOX_ADDRESS_SIZE ;
 scalar_t__ TOX_CONNECTION_UDP ;
 scalar_t__ TOX_ERR_NEW_OK ;
 int assert (int) ;
 int c_sleep (int) ;
 int printf (char*,...) ;
 int t_accept_friend_request_cb ;
 int t_toxav_bit_rate_status_cb ;
 int t_toxav_call_cb ;
 int t_toxav_call_state_cb ;
 int t_toxav_receive_audio_frame_cb ;
 int t_toxav_receive_video_frame_cb ;
 unsigned long long time (int *) ;
 int tox_callback_friend_request (int *,int ,scalar_t__*) ;
 scalar_t__ tox_friend_add (int *,int*,int*,int,int *) ;
 scalar_t__ tox_friend_get_connection_status (int *,int ,int *) ;
 int tox_iterate (int *) ;
 int * tox_new (struct Tox_Options*,scalar_t__*) ;
 int tox_options_default (struct Tox_Options*) ;
 int tox_self_get_address (int *,int*) ;
 scalar_t__ tox_self_get_connection_status (int *) ;
 int toxav_callback_audio_receive_frame (int *,int ,int *) ;
 int toxav_callback_bit_rate_status (int *,int ,int *) ;
 int toxav_callback_call (int *,int ,int *) ;
 int toxav_callback_call_state (int *,int ,int *) ;
 int toxav_callback_video_receive_frame (int *,int ,int *) ;
 int * toxav_new (int *,scalar_t__*) ;

void initialize_tox(Tox **bootstrap, ToxAV **AliceAV, CallControl *AliceCC, ToxAV **BobAV, CallControl *BobCC)
{
    Tox *Alice;
    Tox *Bob;

    struct Tox_Options opts;
    tox_options_default(&opts);

    opts.end_port = 0;
    opts.ipv6_enabled = 0;

    {
        TOX_ERR_NEW error;

        opts.start_port = 33445;
        *bootstrap = tox_new(&opts, &error);
        assert(error == TOX_ERR_NEW_OK);

        opts.start_port = 33455;
        Alice = tox_new(&opts, &error);
        assert(error == TOX_ERR_NEW_OK);

        opts.start_port = 33465;
        Bob = tox_new(&opts, &error);
        assert(error == TOX_ERR_NEW_OK);
    }

    printf("Created 3 instances of Tox\n");
    printf("Preparing network...\n");
    long long unsigned int cur_time = time(((void*)0));

    uint32_t to_compare = 974536;
    uint8_t address[TOX_ADDRESS_SIZE];

    tox_callback_friend_request(Alice, t_accept_friend_request_cb, &to_compare);
    tox_self_get_address(Alice, address);


    assert(tox_friend_add(Bob, address, (uint8_t *)"gentoo", 7, ((void*)0)) != (uint32_t) ~0);

    uint8_t off = 1;

    while (1) {
        tox_iterate(*bootstrap);
        tox_iterate(Alice);
        tox_iterate(Bob);

        if (tox_self_get_connection_status(*bootstrap) &&
                tox_self_get_connection_status(Alice) &&
                tox_self_get_connection_status(Bob) && off) {
            printf("Toxes are online, took %llu seconds\n", time(((void*)0)) - cur_time);
            off = 0;
        }

        if (tox_friend_get_connection_status(Alice, 0, ((void*)0)) == TOX_CONNECTION_UDP &&
                tox_friend_get_connection_status(Bob, 0, ((void*)0)) == TOX_CONNECTION_UDP)
            break;

        c_sleep(20);
    }


    TOXAV_ERR_NEW rc;
    *AliceAV = toxav_new(Alice, &rc);
    assert(rc == TOXAV_ERR_NEW_OK);

    *BobAV = toxav_new(Bob, &rc);
    assert(rc == TOXAV_ERR_NEW_OK);



    toxav_callback_call(*AliceAV, t_toxav_call_cb, AliceCC);
    toxav_callback_call_state(*AliceAV, t_toxav_call_state_cb, AliceCC);
    toxav_callback_bit_rate_status(*AliceAV, t_toxav_bit_rate_status_cb, AliceCC);
    toxav_callback_video_receive_frame(*AliceAV, t_toxav_receive_video_frame_cb, AliceCC);
    toxav_callback_audio_receive_frame(*AliceAV, t_toxav_receive_audio_frame_cb, AliceCC);


    toxav_callback_call(*BobAV, t_toxav_call_cb, BobCC);
    toxav_callback_call_state(*BobAV, t_toxav_call_state_cb, BobCC);
    toxav_callback_bit_rate_status(*BobAV, t_toxav_bit_rate_status_cb, BobCC);
    toxav_callback_video_receive_frame(*BobAV, t_toxav_receive_video_frame_cb, BobCC);
    toxav_callback_audio_receive_frame(*BobAV, t_toxav_receive_audio_frame_cb, BobCC);


    printf("Created 2 instances of ToxAV\n");
    printf("All set after %llu seconds!\n", time(((void*)0)) - cur_time);
}
