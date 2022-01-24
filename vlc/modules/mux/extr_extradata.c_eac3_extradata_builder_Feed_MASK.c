#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_4__ {int i_numblkscod; int i_frmsiz; } ;
struct vlc_a52_bitstream_info {size_t i_fscod; unsigned int i_bsid; unsigned int i_bsmod; unsigned int i_acmod; unsigned int i_lfeon; TYPE_1__ eac3; } ;
struct TYPE_5__ {int i_extra; int /*<<< orphan*/  p_extra; } ;
typedef  TYPE_2__ mux_extradata_builder_t ;
typedef  int /*<<< orphan*/  bs_t ;

/* Variables and functions */
 size_t VLC_A52_MIN_HEADER_SIZE ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct vlc_a52_bitstream_info*,int const*,size_t) ; 

__attribute__((used)) static void FUNC4(mux_extradata_builder_t *m,
                                        const uint8_t *p_data, size_t i_data)
{
    if(m->i_extra || i_data < VLC_A52_MIN_HEADER_SIZE ||
       p_data[0] != 0x0B || p_data[1] != 0x77)
        return;

    struct vlc_a52_bitstream_info bsi;
    if(FUNC3(&bsi, &p_data[2], /* start code */
                                      i_data - 2) != VLC_SUCCESS)
        return;

    m->p_extra = FUNC2(5);
    if(!m->p_extra)
        return;
    m->i_extra = 5;

    bs_t s;
    FUNC1(&s, m->p_extra, m->i_extra);
    const unsigned rgi_fscod_samplerates[] = { 48000, 44100, 32000 };
    unsigned fs = rgi_fscod_samplerates[bsi.i_fscod];
    unsigned numblks = bsi.eac3.i_numblkscod + 1;
    if(numblks > 3)
        numblks = 6;
    unsigned data_rate = (bsi.eac3.i_frmsiz + 1) * fs / (numblks << 4); /* F.6.2.2 */
    FUNC0(&s, 13, data_rate);
    FUNC0(&s, 3, 0); // num_ind_sub - 1
    FUNC0(&s, 2, bsi.i_fscod);
    FUNC0(&s, 5, bsi.i_bsid);
    FUNC0(&s, 5, bsi.i_bsmod);
    FUNC0(&s, 3, bsi.i_acmod);
    FUNC0(&s, 1, bsi.i_lfeon);
    FUNC0(&s, 3, 0); // reserved
    FUNC0(&s, 4, 0); // num_dep_sub
    FUNC0(&s, 1, 0); // reserved
}