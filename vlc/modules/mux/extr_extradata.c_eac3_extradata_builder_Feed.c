
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int i_numblkscod; int i_frmsiz; } ;
struct vlc_a52_bitstream_info {size_t i_fscod; unsigned int i_bsid; unsigned int i_bsmod; unsigned int i_acmod; unsigned int i_lfeon; TYPE_1__ eac3; } ;
struct TYPE_5__ {int i_extra; int p_extra; } ;
typedef TYPE_2__ mux_extradata_builder_t ;
typedef int bs_t ;


 size_t VLC_A52_MIN_HEADER_SIZE ;
 scalar_t__ VLC_SUCCESS ;
 int bs_write (int *,int,unsigned int) ;
 int bs_write_init (int *,int ,int) ;
 int malloc (int) ;
 scalar_t__ vlc_a52_ParseEac3BitstreamInfo (struct vlc_a52_bitstream_info*,int const*,size_t) ;

__attribute__((used)) static void eac3_extradata_builder_Feed(mux_extradata_builder_t *m,
                                        const uint8_t *p_data, size_t i_data)
{
    if(m->i_extra || i_data < VLC_A52_MIN_HEADER_SIZE ||
       p_data[0] != 0x0B || p_data[1] != 0x77)
        return;

    struct vlc_a52_bitstream_info bsi;
    if(vlc_a52_ParseEac3BitstreamInfo(&bsi, &p_data[2],
                                      i_data - 2) != VLC_SUCCESS)
        return;

    m->p_extra = malloc(5);
    if(!m->p_extra)
        return;
    m->i_extra = 5;

    bs_t s;
    bs_write_init(&s, m->p_extra, m->i_extra);
    const unsigned rgi_fscod_samplerates[] = { 48000, 44100, 32000 };
    unsigned fs = rgi_fscod_samplerates[bsi.i_fscod];
    unsigned numblks = bsi.eac3.i_numblkscod + 1;
    if(numblks > 3)
        numblks = 6;
    unsigned data_rate = (bsi.eac3.i_frmsiz + 1) * fs / (numblks << 4);
    bs_write(&s, 13, data_rate);
    bs_write(&s, 3, 0);
    bs_write(&s, 2, bsi.i_fscod);
    bs_write(&s, 5, bsi.i_bsid);
    bs_write(&s, 5, bsi.i_bsmod);
    bs_write(&s, 3, bsi.i_acmod);
    bs_write(&s, 1, bsi.i_lfeon);
    bs_write(&s, 3, 0);
    bs_write(&s, 4, 0);
    bs_write(&s, 1, 0);
}
