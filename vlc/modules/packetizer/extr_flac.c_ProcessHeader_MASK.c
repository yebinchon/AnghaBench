#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {int i_extra; int /*<<< orphan*/  p_extra; } ;
struct TYPE_6__ {int i_extra; char* p_extra; } ;
struct TYPE_8__ {TYPE_2__ fmt_out; TYPE_1__ fmt_in; TYPE_4__* p_sys; } ;
typedef  TYPE_3__ decoder_t ;
struct TYPE_9__ {int b_stream_info; int /*<<< orphan*/  stream_info; } ;
typedef  TYPE_4__ decoder_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FLAC_STREAMINFO_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC5(decoder_t *p_dec)
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    int i_extra = p_dec->fmt_in.i_extra;
    char *p_extra = p_dec->fmt_in.p_extra;

    if (i_extra > 8 && !FUNC3(p_extra, "fLaC", 4)) {
        i_extra -= 8;
        p_extra += 8;
    }

    if (p_dec->fmt_in.i_extra < FLAC_STREAMINFO_SIZE)
        return;

    FUNC0( (uint8_t *) p_extra, &p_sys->stream_info );

    p_sys->b_stream_info = true;

    p_dec->fmt_out.i_extra = i_extra;
    FUNC1(p_dec->fmt_out.p_extra);
    p_dec->fmt_out.p_extra = FUNC2(i_extra);
    if (p_dec->fmt_out.p_extra)
        FUNC4(p_dec->fmt_out.p_extra, p_extra, i_extra);
    else
        p_dec->fmt_out.i_extra = 0;
}