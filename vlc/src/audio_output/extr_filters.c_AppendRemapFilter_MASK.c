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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  config_chain_t ;
typedef  int /*<<< orphan*/  audio_sample_format_t ;
typedef  int /*<<< orphan*/  aout_filters_t ;

/* Variables and functions */
 int AOUT_CHAN_MAX ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC1 (char**,char*,int,int,int,int,int,int,int,int,int) ; 
 char* FUNC2 (char**,int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(vlc_object_t *obj, aout_filters_t *restrict filters,
                             audio_sample_format_t *restrict infmt,
                             const audio_sample_format_t *restrict outfmt,
                             const int *wg4_remap)
{
    char *name;
    config_chain_t *cfg;

    /* The remap audio filter use a different order than wg4 */
    static const uint8_t wg4_to_remap[] = { 0, 2, 6, 7, 3, 5, 4, 1, 8 };
    int remap[AOUT_CHAN_MAX];
    bool needed = false;
    for (int i = 0; i < AOUT_CHAN_MAX; ++i)
    {
        if (wg4_remap[i] != i)
            needed = true;
        remap[i] = wg4_remap[i] >= 0 ? wg4_to_remap[wg4_remap[i]] : -1;
    }
    if (!needed)
        return 0;

    char *str;
    int ret = FUNC1(&str, "remap{channel-left=%d,channel-right=%d,"
                       "channel-middleleft=%d,channel-middleright=%d,"
                       "channel-rearleft=%d,channel-rearright=%d,"
                       "channel-rearcenter=%d,channel-center=%d,"
                       "channel-lfe=%d,normalize=false}",
                       remap[0], remap[1], remap[2], remap[3], remap[4],
                       remap[5], remap[6], remap[7], remap[8]);
    if (ret == -1)
        return -1;

    FUNC4(FUNC2(&name, &cfg, str));
    if (name != NULL && cfg != NULL)
        ret = FUNC0(obj, "audio filter", name, filters,
                           infmt, outfmt, cfg);
    else
        ret = -1;

    FUNC4(str);
    FUNC4(name);
    if (cfg)
        FUNC3(cfg);
    return ret;
}