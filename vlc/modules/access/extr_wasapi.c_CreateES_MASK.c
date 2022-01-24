#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  es_out_id_t ;
struct TYPE_10__ {int i_bitspersample; int i_channels; int i_rate; int /*<<< orphan*/  i_format; } ;
struct TYPE_8__ {int i_bitrate; TYPE_3__ audio; int /*<<< orphan*/  i_codec; } ;
typedef  TYPE_1__ es_format_t ;
struct TYPE_9__ {int /*<<< orphan*/  out; } ;
typedef  TYPE_2__ demux_t ;
typedef  int /*<<< orphan*/  WAVEFORMATEX ;
typedef  int REFERENCE_TIME ;
typedef  int /*<<< orphan*/  IAudioClient ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  AUDCLNT_SHAREMODE_SHARED ; 
 int /*<<< orphan*/  AUDCLNT_STREAMFLAGS_EVENTCALLBACK ; 
 int /*<<< orphan*/  AUDCLNT_STREAMFLAGS_LOOPBACK ; 
 int /*<<< orphan*/  AUDIO_ES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,...) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static es_out_id_t *FUNC9(demux_t *demux, IAudioClient *client, bool loop,
                             vlc_tick_t caching, size_t *restrict frame_size)
{
    es_format_t fmt;
    WAVEFORMATEX *pwf;
    HRESULT hr;

    hr = FUNC2(client, &pwf);
    if (FUNC1(hr))
    {
        FUNC7(demux, "cannot get mix format (error 0x%lX)", hr);
        return NULL;
    }

    FUNC5(&fmt, AUDIO_ES, 0);
    if (FUNC8(pwf, &fmt.audio))
    {
        FUNC7(demux, "unsupported mix format");
        FUNC0(pwf);
        return NULL;
    }

    fmt.i_codec = fmt.audio.i_format;
    fmt.i_bitrate = fmt.audio.i_bitspersample * fmt.audio.i_channels
                                              * fmt.audio.i_rate;
    *frame_size = fmt.audio.i_bitspersample * fmt.audio.i_channels / 8;

    DWORD flags = AUDCLNT_STREAMFLAGS_EVENTCALLBACK;
    if (loop)
        flags |= AUDCLNT_STREAMFLAGS_LOOPBACK;

    /* Request at least thrice the PTS delay */
    REFERENCE_TIME bufsize = FUNC4( caching ) * 3;

    hr = FUNC3(client, AUDCLNT_SHAREMODE_SHARED, flags,
                                 bufsize, 0, pwf, NULL);
    FUNC0(pwf);
    if (FUNC1(hr))
    {
        FUNC7(demux, "cannot initialize audio client (error 0x%lX)", hr);
        return NULL;
    }
    return FUNC6(demux->out, &fmt);
}