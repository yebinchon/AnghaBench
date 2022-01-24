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
struct TYPE_4__ {int /*<<< orphan*/  i_quirks; int /*<<< orphan*/  psz_name; int /*<<< orphan*/  i_codec; int /*<<< orphan*/  i_cat; int /*<<< orphan*/  psz_mime; int /*<<< orphan*/  p_obj; } ;
typedef  TYPE_1__ mc_api ;
struct TYPE_5__ {scalar_t__ get_output_buffer; scalar_t__ get_input_buffer; } ;

/* Variables and functions */
 int MC_API_ERROR ; 
 int /*<<< orphan*/  MC_API_VIDEO_QUIRKS_SUPPORT_INTERLACED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__ jfields ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(mc_api *api, int i_profile)
{
    FUNC2(api->psz_name);

    api->i_quirks = 0;
    api->psz_name = FUNC0(api->p_obj, api->psz_mime,
                                       i_profile, &api->i_quirks);
    if (!api->psz_name)
        return MC_API_ERROR;
    api->i_quirks |= FUNC1(api->i_cat, api->i_codec, api->psz_name,
                                        FUNC3(api->psz_name));

    /* Allow interlaced picture after API 21 */
    if (jfields.get_input_buffer && jfields.get_output_buffer)
        api->i_quirks |= MC_API_VIDEO_QUIRKS_SUPPORT_INTERLACED;
    return 0;
}