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
typedef  int /*<<< orphan*/  vlc_fourcc_t ;

/* Variables and functions */
 int /*<<< orphan*/  const* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  p_list_YUV ; 
 int /*<<< orphan*/  pp_YUV_fallback ; 

const vlc_fourcc_t *FUNC1( vlc_fourcc_t i_fourcc )
{
    return FUNC0( i_fourcc, pp_YUV_fallback, p_list_YUV );
}