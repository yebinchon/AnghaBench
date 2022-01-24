#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  j2k; } ;
typedef  TYPE_1__ opj_jp2_t ;
typedef  int /*<<< orphan*/  opj_image_t ;
typedef  int /*<<< orphan*/  opj_event_mgr_t ;
typedef  int /*<<< orphan*/  OPJ_INT32 ;
typedef  int /*<<< orphan*/  OPJ_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

OPJ_BOOL FUNC1(opj_jp2_t *p_jp2,
                                 opj_image_t* p_image,
                                 OPJ_INT32 p_start_x, OPJ_INT32 p_start_y,
                                 OPJ_INT32 p_end_x, OPJ_INT32 p_end_y,
                                 opj_event_mgr_t * p_manager
                                )
{
    return FUNC0(p_jp2->j2k, p_image, p_start_x, p_start_y,
                                   p_end_x, p_end_y, p_manager);
}