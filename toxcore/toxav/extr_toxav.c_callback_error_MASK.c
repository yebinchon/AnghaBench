#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ ToxAV ;
struct TYPE_6__ {scalar_t__ av_call; int /*<<< orphan*/  friend_number; } ;
typedef  TYPE_2__ MSICall ;

/* Variables and functions */
 int /*<<< orphan*/  TOXAV_FRIEND_CALL_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(void *toxav_inst, MSICall *call)
{
    ToxAV *toxav = toxav_inst;
    FUNC3(toxav->mutex);

    FUNC2(toxav, call->friend_number, TOXAV_FRIEND_CALL_STATE_ERROR);

    if (call->av_call) {
        FUNC0(call->av_call);
        FUNC1(call->av_call);
    }

    FUNC4(toxav->mutex);
    return 0;
}