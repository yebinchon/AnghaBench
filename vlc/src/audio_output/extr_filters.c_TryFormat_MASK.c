#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  scalar_t__ vlc_fourcc_t ;
typedef  int /*<<< orphan*/  filter_t ;
struct TYPE_6__ {scalar_t__ i_format; } ;
typedef  TYPE_1__ audio_sample_format_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static filter_t *FUNC3 (vlc_object_t *obj, vlc_fourcc_t codec,
                            audio_sample_format_t *restrict fmt)
{
    audio_sample_format_t output = *fmt;

    FUNC2 (codec != fmt->i_format);
    output.i_format = codec;
    FUNC1 (&output);

    filter_t *filter = FUNC0 (obj, fmt, &output);
    if (filter != NULL)
        *fmt = output;
    return filter;
}