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
struct TYPE_3__ {int /*<<< orphan*/  p_sample_size; int /*<<< orphan*/  p_sample_offset_pts; int /*<<< orphan*/  p_sample_count_pts; int /*<<< orphan*/  p_sample_delta_dts; int /*<<< orphan*/  p_sample_count_dts; } ;
typedef  TYPE_1__ mp4_chunk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1( mp4_chunk_t *ck )
{
    FUNC0( ck->p_sample_count_dts );
    FUNC0( ck->p_sample_delta_dts );
    FUNC0( ck->p_sample_count_pts );
    FUNC0( ck->p_sample_offset_pts );
    FUNC0( ck->p_sample_size );
}