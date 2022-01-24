#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_14__ {TYPE_6__* second; } ;
struct TYPE_12__ {TYPE_10__* second; } ;
struct TYPE_15__ {scalar_t__ friend_number; int /*<<< orphan*/  mutex; TYPE_3__ video; TYPE_2__* msi_call; TYPE_1__ audio; scalar_t__ active; struct TYPE_15__* next; } ;
typedef  TYPE_4__ ToxAVCall ;
struct TYPE_16__ {size_t calls_head; scalar_t__ dmssa; int dmsst; int dmssc; scalar_t__ interval; int /*<<< orphan*/  mutex; TYPE_4__** calls; } ;
typedef  TYPE_5__ ToxAV ;
struct TYPE_17__ {int /*<<< orphan*/  lcfd; } ;
struct TYPE_13__ {int self_capabilities; int peer_capabilities; } ;
struct TYPE_11__ {int /*<<< orphan*/  lp_frame_duration; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_10__*) ; 
 TYPE_4__* FUNC2 (TYPE_5__*,scalar_t__) ; 
 scalar_t__ FUNC3 () ; 
 int msi_CapRAudio ; 
 int msi_CapRVideo ; 
 int msi_CapSAudio ; 
 int msi_CapSVideo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 

void FUNC7(ToxAV *av)
{
    FUNC4(av->mutex);

    if (av->calls == NULL) {
        FUNC5(av->mutex);
        return;
    }

    uint64_t start = FUNC3();
    int32_t rc = 500;

    ToxAVCall *i = av->calls[av->calls_head];

    for (; i; i = i->next) {
        if (i->active) {
            FUNC4(i->mutex);
            FUNC5(av->mutex);

            FUNC1(i->audio.second);
            FUNC6(i->video.second);

            if (i->msi_call->self_capabilities & msi_CapRAudio &&
                    i->msi_call->peer_capabilities & msi_CapSAudio)
                rc = FUNC0(i->audio.second->lp_frame_duration, rc);

            if (i->msi_call->self_capabilities & msi_CapRVideo &&
                    i->msi_call->peer_capabilities & msi_CapSVideo)
                rc = FUNC0(i->video.second->lcfd, (uint32_t) rc);

            uint32_t fid = i->friend_number;

            FUNC5(i->mutex);
            FUNC4(av->mutex);

            /* In case this call is popped from container stop iteration */
            if (FUNC2(av, fid) != i)
                break;
        }
    }

    FUNC5(av->mutex);

    av->interval = rc < av->dmssa ? 0 : (rc - av->dmssa);
    av->dmsst += FUNC3() - start;

    if (++av->dmssc == 3) {
        av->dmssa = av->dmsst / 3 + 5 /* NOTE Magic Offset for precission */;
        av->dmssc = 0;
        av->dmsst = 0;
    }
}