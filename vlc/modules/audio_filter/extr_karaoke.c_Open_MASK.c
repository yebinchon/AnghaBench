#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_9__ {int i_channels; int /*<<< orphan*/  i_format; } ;
struct TYPE_7__ {TYPE_5__ audio; } ;
struct TYPE_6__ {TYPE_5__ audio; } ;
struct TYPE_8__ {int /*<<< orphan*/  pf_audio_filter; TYPE_2__ fmt_in; TYPE_1__ fmt_out; } ;
typedef  TYPE_3__ filter_t ;

/* Variables and functions */
 int /*<<< orphan*/  Process ; 
 int /*<<< orphan*/  VLC_CODEC_FL32 ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 

__attribute__((used)) static int FUNC2 (vlc_object_t *obj)
{
    filter_t *filter = (filter_t *)obj;

    if (filter->fmt_in.audio.i_channels != 2)
    {
        FUNC1 (filter, "voice removal requires stereo");
        return VLC_EGENERIC;
    }

    filter->fmt_in.audio.i_format = VLC_CODEC_FL32;
    FUNC0(&filter->fmt_in.audio);
    filter->fmt_out.audio = filter->fmt_in.audio;
    filter->pf_audio_filter = Process;
    return VLC_SUCCESS;
}