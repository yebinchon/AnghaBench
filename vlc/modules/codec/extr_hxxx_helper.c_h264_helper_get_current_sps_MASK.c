#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hxxx_helper_nal {int /*<<< orphan*/ * b; } ;
struct TYPE_2__ {scalar_t__ i_sps_count; size_t i_current_sps; struct hxxx_helper_nal* sps_list; } ;
struct hxxx_helper {TYPE_1__ h264; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct hxxx_helper_nal *
FUNC1(const struct hxxx_helper *hh)
{
    if (hh->h264.i_sps_count == 0)
        return NULL;

    const struct hxxx_helper_nal *hsps =
        &hh->h264.sps_list[hh->h264.i_current_sps];
    FUNC0(hsps->b != NULL);
    return hsps;
}