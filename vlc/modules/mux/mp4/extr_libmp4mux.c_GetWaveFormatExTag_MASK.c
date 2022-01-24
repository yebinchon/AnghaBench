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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_4__ {int i_rate; int /*<<< orphan*/  i_bitspersample; int /*<<< orphan*/  i_blockalign; int /*<<< orphan*/  i_channels; } ;
struct TYPE_5__ {int i_bitrate; int /*<<< orphan*/  p_extra; int /*<<< orphan*/  i_extra; TYPE_1__ audio; int /*<<< orphan*/  i_codec; } ;
typedef  TYPE_2__ es_format_t ;
typedef  int /*<<< orphan*/  bo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bo_t *FUNC5(es_format_t *p_fmt, const char *tag)
{
    bo_t *box = FUNC3(tag);
    if(!box)
        return NULL;

    uint16_t wFormatTag;
    FUNC4(p_fmt->i_codec, &wFormatTag);
    FUNC0(box, wFormatTag); //wFormatTag
    FUNC0(box, p_fmt->audio.i_channels); //nChannels
    FUNC1(box, p_fmt->audio.i_rate); //nSamplesPerSec
    FUNC1(box, p_fmt->i_bitrate / 8); //nAvgBytesPerSec
    FUNC0(box, p_fmt->audio.i_blockalign); //nBlockAlign
    FUNC0(box, p_fmt->audio.i_bitspersample);  //wBitsPerSample
    FUNC0(box, p_fmt->i_extra); //cbSize

    FUNC2(box, p_fmt->i_extra, p_fmt->p_extra);

    return box;
}