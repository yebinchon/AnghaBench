#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ToxAVCall ;
struct TYPE_7__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ ToxAV ;
struct TYPE_8__ {int /*<<< orphan*/  peer_capabilities; int /*<<< orphan*/  friend_number; } ;
typedef  TYPE_2__ MSICall ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(void *toxav_inst, MSICall *call)
{
    ToxAV *toxav = toxav_inst;
    FUNC4(toxav->mutex);

    ToxAVCall *av_call = FUNC0(toxav, call->friend_number);

    if (av_call == NULL) {
        /* Should this ever happen? */
        FUNC5(toxav->mutex);
        return -1;
    }

    if (!FUNC1(av_call)) {
        FUNC2(toxav_inst, call);
        FUNC5(toxav->mutex);
        return -1;
    }

    if (!FUNC3(toxav, call->friend_number, call->peer_capabilities)) {
        FUNC2(toxav_inst, call);
        FUNC5(toxav->mutex);
        return -1;
    }

    FUNC5(toxav->mutex);
    return 0;
}