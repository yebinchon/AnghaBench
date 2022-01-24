#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  size_t uint32_t ;
typedef  size_t int32_t ;
struct TYPE_8__ {scalar_t__ status; int friendcon_id; scalar_t__ message_id; scalar_t__ is_typing; int /*<<< orphan*/  userstatus; scalar_t__ statusmessage_length; int /*<<< orphan*/  real_pk; scalar_t__ friendrequest_lastsent; } ;
struct TYPE_7__ {int numfriends; int /*<<< orphan*/  fr_c; TYPE_4__* friendlist; } ;
typedef  TYPE_1__ Messenger ;
typedef  int /*<<< orphan*/  Friend ;

/* Variables and functions */
 size_t FAERR_NOMEM ; 
 scalar_t__ FRIENDCONN_STATUS_CONNECTED ; 
 int /*<<< orphan*/  MESSENGER_CALLBACK_INDEX ; 
 scalar_t__ NOFRIEND ; 
 int /*<<< orphan*/  USERSTATUS_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  handle_custom_lossy_packet ; 
 int /*<<< orphan*/  handle_packet ; 
 int /*<<< orphan*/  handle_status ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__ const*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,size_t) ; 

__attribute__((used)) static int32_t FUNC7(Messenger *m, const uint8_t *real_pk, uint8_t status)
{
    /* Resize the friend list if necessary. */
    if (FUNC5(m, m->numfriends + 1) != 0)
        return FAERR_NOMEM;

    FUNC3(&(m->friendlist[m->numfriends]), 0, sizeof(Friend));

    int friendcon_id = FUNC4(m->fr_c, real_pk);

    if (friendcon_id == -1)
        return FAERR_NOMEM;

    uint32_t i;

    for (i = 0; i <= m->numfriends; ++i) {
        if (m->friendlist[i].status == NOFRIEND) {
            m->friendlist[i].status = status;
            m->friendlist[i].friendcon_id = friendcon_id;
            m->friendlist[i].friendrequest_lastsent = 0;
            FUNC2(m->friendlist[i].real_pk, real_pk);
            m->friendlist[i].statusmessage_length = 0;
            m->friendlist[i].userstatus = USERSTATUS_NONE;
            m->friendlist[i].is_typing = 0;
            m->friendlist[i].message_id = 0;
            FUNC1(m->fr_c, friendcon_id, MESSENGER_CALLBACK_INDEX, &handle_status, &handle_packet,
                                        &handle_custom_lossy_packet, m, i);

            if (m->numfriends == i)
                ++m->numfriends;

            if (FUNC0(m->fr_c, friendcon_id) == FRIENDCONN_STATUS_CONNECTED) {
                FUNC6(m, i);
            }

            return i;
        }
    }

    return FAERR_NOMEM;
}