#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  vlc_clock_t ;
struct TYPE_19__ {scalar_t__ i_physical_channels; scalar_t__ i_channels; int /*<<< orphan*/  i_format; } ;
struct TYPE_17__ {TYPE_5__ audio; int /*<<< orphan*/  i_codec; } ;
struct TYPE_16__ {TYPE_5__ audio; int /*<<< orphan*/  i_codec; } ;
struct TYPE_15__ {int /*<<< orphan*/ * sys; } ;
struct TYPE_18__ {int /*<<< orphan*/ * pf_audio_filter; int /*<<< orphan*/ * p_module; TYPE_3__ fmt_out; TYPE_2__ fmt_in; int /*<<< orphan*/ * p_cfg; TYPE_1__ owner; } ;
typedef  TYPE_4__ filter_t ;
typedef  int /*<<< orphan*/  config_chain_t ;
typedef  TYPE_5__ audio_sample_format_t ;

/* Variables and functions */
 int FUNC0 (TYPE_5__*,TYPE_5__ const*) ; 
 scalar_t__ FUNC1 (TYPE_5__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_4__*,char const*,char const*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 

__attribute__((used)) static filter_t *FUNC7(vlc_object_t *obj, vlc_clock_t *clock,
                              const char *type, const char *name,
                              const audio_sample_format_t *infmt,
                              const audio_sample_format_t *outfmt,
                              config_chain_t *cfg, bool const_fmt)
{
    filter_t *filter = FUNC5 (obj, sizeof (*filter), type);
    if (FUNC4(filter == NULL))
        return NULL;

    filter->owner.sys = clock;
    filter->p_cfg = cfg;
    filter->fmt_in.audio = *infmt;
    filter->fmt_in.i_codec = infmt->i_format;
    filter->fmt_out.audio = *outfmt;
    filter->fmt_out.i_codec = outfmt->i_format;

#ifndef NDEBUG
    /* Assure that infmt/oufmt are well prepared and that channels
     * configurations are valid*/
    if( infmt->i_physical_channels != 0 )
        FUNC2( FUNC1( infmt ) == infmt->i_channels );
    if( outfmt->i_physical_channels != 0 )
        FUNC2( FUNC1( outfmt ) == outfmt->i_channels );
#endif

    filter->p_module = FUNC3 (filter, type, name, false);

#ifndef NDEBUG
    if (filter->p_module == NULL || const_fmt)
    {
        /* If probing failed, formats shall not have been modified. */
        FUNC2 (FUNC0(&filter->fmt_in.audio, infmt));
        FUNC2 (FUNC0(&filter->fmt_out.audio, outfmt));
    }
#endif

    if (filter->p_module == NULL)
    {
        FUNC6(filter);
        filter = NULL;
    }
    else
        FUNC2 (filter->pf_audio_filter != NULL);
    return filter;
}