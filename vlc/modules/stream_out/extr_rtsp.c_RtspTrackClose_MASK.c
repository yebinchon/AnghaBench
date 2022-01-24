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
struct TYPE_3__ {int setup_fd; int rtp_fd; int /*<<< orphan*/  sout_id; } ;
typedef  TYPE_1__ rtsp_strack_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2( rtsp_strack_t *tr )
{
    if (tr->setup_fd != -1)
    {
        if (tr->rtp_fd != -1)
        {
            FUNC1(tr->sout_id, tr->rtp_fd);
            tr->rtp_fd = -1;
        }
        FUNC0(tr->setup_fd);
        tr->setup_fd = -1;
    }
}