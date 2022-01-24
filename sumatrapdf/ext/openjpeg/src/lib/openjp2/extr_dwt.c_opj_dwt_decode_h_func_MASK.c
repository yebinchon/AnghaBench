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
typedef  int /*<<< orphan*/  opj_tls_t ;
struct TYPE_5__ {int /*<<< orphan*/  mem; } ;
struct TYPE_4__ {size_t min_j; size_t max_j; size_t w; TYPE_2__ h; int /*<<< orphan*/ * tiledp; } ;
typedef  TYPE_1__ opj_dwd_decode_h_job_t ;
typedef  size_t OPJ_UINT32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void* user_data, opj_tls_t* tls)
{
    OPJ_UINT32 j;
    opj_dwd_decode_h_job_t* job;
    (void)tls;

    job = (opj_dwd_decode_h_job_t*)user_data;
    for (j = job->min_j; j < job->max_j; j++) {
        FUNC2(&job->h, &job->tiledp[j * job->w]);
    }

    FUNC0(job->h.mem);
    FUNC1(job);
}