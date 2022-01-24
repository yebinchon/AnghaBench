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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct range {int dummy; } ;
struct TYPE_4__ {char const* psz_name; struct range const* p_vlc_range; } ;
struct basic_filter_data {TYPE_1__ sigma; int /*<<< orphan*/  filter_type; } ;
struct TYPE_5__ {int /*<<< orphan*/  pf_video_filter; int /*<<< orphan*/  psz_name; } ;
typedef  TYPE_2__ filter_t ;
typedef  int /*<<< orphan*/  VAProcPipelineCaps ;
typedef  int /*<<< orphan*/  VAProcFilterType ;

/* Variables and functions */
 int /*<<< orphan*/  BasicFilter ; 
 int /*<<< orphan*/  FilterCallback ; 
 scalar_t__ FUNC0 (TYPE_2__* const,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct basic_filter_data* const,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OpenBasicFilter_InitFilterParams ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int VLC_VAR_DOINHERIT ; 
 int VLC_VAR_FLOAT ; 
 int VLC_VAR_ISCOMMAND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct basic_filter_data* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct basic_filter_data* const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,struct basic_filter_data* const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int
FUNC7(vlc_object_t * obj, VAProcFilterType filter_type,
                const char *psz_sigma_name, struct range const *p_vlc_range)
{
    VAProcPipelineCaps                  pipeline_caps;
    filter_t *const                     filter = (filter_t *)obj;
    FUNC1(filter->psz_name);
    struct basic_filter_data *const     p_data = FUNC2(1, sizeof(*p_data));
    if (!p_data)
        return VLC_ENOMEM;

    p_data->filter_type = filter_type;
    p_data->sigma.psz_name = psz_sigma_name;
    p_data->sigma.p_vlc_range = p_vlc_range;

    FUNC5(obj, p_data->sigma.psz_name,
               VLC_VAR_FLOAT | VLC_VAR_DOINHERIT | VLC_VAR_ISCOMMAND);

    if (FUNC0(filter, p_data->filter_type, &pipeline_caps, p_data,
             OpenBasicFilter_InitFilterParams, NULL))
        goto error;

    FUNC4(obj, p_data->sigma.psz_name, FilterCallback, p_data);

    filter->pf_video_filter = BasicFilter;

    return VLC_SUCCESS;

error:
    FUNC6(obj, p_data->sigma.psz_name);
    FUNC3(p_data);
    return VLC_EGENERIC;
}