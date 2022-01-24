#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * second; int /*<<< orphan*/ * first; } ;
struct TYPE_5__ {int /*<<< orphan*/ * second; int /*<<< orphan*/ * first; } ;
struct TYPE_7__ {scalar_t__ active; int /*<<< orphan*/  mutex; int /*<<< orphan*/  mutex_video; int /*<<< orphan*/  mutex_audio; TYPE_2__ video; TYPE_1__ audio; int /*<<< orphan*/  bwc; } ;
typedef  TYPE_3__ ToxAVCall ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(ToxAVCall *call)
{
    if (call == NULL || call->active == 0)
        return;

    call->active = 0;

    FUNC3(call->mutex_audio);
    FUNC4(call->mutex_audio);
    FUNC3(call->mutex_video);
    FUNC4(call->mutex_video);
    FUNC3(call->mutex);
    FUNC4(call->mutex);

    FUNC1(call->bwc);

    FUNC5(call->audio.first);
    FUNC0(call->audio.second);
    call->audio.first = NULL;
    call->audio.second = NULL;

    FUNC5(call->video.first);
    FUNC6(call->video.second);
    call->video.first = NULL;
    call->video.second = NULL;

    FUNC2(call->mutex_audio);
    FUNC2(call->mutex_video);
    FUNC2(call->mutex);
}