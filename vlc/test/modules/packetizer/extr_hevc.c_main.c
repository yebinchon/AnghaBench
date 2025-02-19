
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct params_s {int i_rate_num; int i_rate_den; int i_frame_count; int b_extra; int i_read_size; int codec; int obj; TYPE_1__* vlc; } ;
struct TYPE_4__ {int p_libvlc_int; } ;
typedef TYPE_1__ libvlc_instance_t ;


 int RUN (char*,int ,scalar_t__,scalar_t__,int ) ;
 int VLC_CODEC_HEVC ;
 int VLC_OBJECT (int ) ;
 TYPE_1__* libvlc_new (int ,int *) ;
 int libvlc_release (TYPE_1__*) ;
 int test_init () ;
 int test_packetize ;
 scalar_t__ test_samples_raw_h265 ;
 scalar_t__ test_samples_raw_h265_len ;

int main(void)
{
    test_init();

    libvlc_instance_t *vlc = libvlc_new(0, ((void*)0));
    if(!vlc)
        return 1;

    struct params_s params;
    params.vlc = vlc;
    params.obj = VLC_OBJECT(vlc->p_libvlc_int);
    params.codec = VLC_CODEC_HEVC;
    params.i_rate_num = 0;
    params.i_rate_den = 0;
    params.i_frame_count = 2*25;
    params.b_extra = 1;

    params.i_read_size = 500;
    RUN("block 500", test_packetize,
        test_samples_raw_h265, test_samples_raw_h265_len, 0);

    params.i_rate_num = 60000;
    params.i_rate_den = 1001;
    params.i_read_size = 8;
    RUN("block 8", test_packetize,
        test_samples_raw_h265, test_samples_raw_h265_len, 0);

    params.i_frame_count = 1*25 + 4 ;
    params.i_read_size = 500;
    RUN("skip 1st Iframe", test_packetize,
        test_samples_raw_h265 + 10, test_samples_raw_h265_len - 10, 0);

    libvlc_release(vlc);
    return 0;
}
