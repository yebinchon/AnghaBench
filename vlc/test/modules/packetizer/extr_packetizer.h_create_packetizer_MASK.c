#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_fourcc_t ;
struct TYPE_11__ {int /*<<< orphan*/  p_libvlc_int; } ;
typedef  TYPE_2__ libvlc_instance_t ;
struct TYPE_10__ {unsigned int i_frame_rate; unsigned int i_frame_rate_base; } ;
struct TYPE_13__ {int b_packetized; TYPE_1__ video; } ;
struct TYPE_12__ {int /*<<< orphan*/  p_module; TYPE_6__ fmt_in; TYPE_6__ fmt_out; int /*<<< orphan*/ * pf_packetize; int /*<<< orphan*/ * pf_decode; } ;
typedef  TYPE_3__ decoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  VIDEO_ES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,int /*<<< orphan*/ *,int) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static decoder_t *FUNC4(libvlc_instance_t *vlc,
                                    unsigned num, unsigned den,
                                    vlc_fourcc_t codec)
{
    decoder_t *p_pack = FUNC3(vlc->p_libvlc_int,
                                          sizeof(*p_pack));
    if(!p_pack)
        return NULL;
    p_pack->pf_decode = NULL;
    p_pack->pf_packetize = NULL;

    FUNC1(&p_pack->fmt_in, VIDEO_ES, codec);
    FUNC1(&p_pack->fmt_out, VIDEO_ES, 0);
    p_pack->fmt_in.video.i_frame_rate = num;
    p_pack->fmt_in.video.i_frame_rate_base = den;
    p_pack->fmt_in.b_packetized = false;

    p_pack->p_module = FUNC2( p_pack, "packetizer", NULL, false );
    if(!p_pack->p_module)
        FUNC0(p_pack);
    return p_pack;
}