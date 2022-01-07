
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int int16_t ;
typedef int ToxAV ;


 int printf (char*) ;

void t_toxav_receive_audio_frame_cb(ToxAV *av, uint32_t friend_number,
                                    int16_t const *pcm,
                                    size_t sample_count,
                                    uint8_t channels,
                                    uint32_t sampling_rate,
                                    void *user_data)
{
    (void) av;
    (void) friend_number;
    (void) pcm;
    (void) sample_count;
    (void) channels;
    (void) sampling_rate;
    (void) user_data;
    printf("Received audio payload\n");
}
