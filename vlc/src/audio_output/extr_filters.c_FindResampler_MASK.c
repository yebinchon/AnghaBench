#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  filter_t ;
typedef  int /*<<< orphan*/  audio_sample_format_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static filter_t *FUNC3 (vlc_object_t *obj,
                                const audio_sample_format_t *infmt,
                                const audio_sample_format_t *outfmt)
{
    char *modlist = FUNC2(obj, "audio-resampler");
    filter_t *filter = FUNC0(obj, NULL, "audio resampler", modlist,
                                    infmt, outfmt, NULL, true);
    FUNC1(modlist);
    return filter;
}