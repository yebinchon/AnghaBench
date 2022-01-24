#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  size_t int32_t ;
struct TYPE_10__ {scalar_t__ status; int /*<<< orphan*/  friendcon_id; int /*<<< orphan*/  real_pk; } ;
struct TYPE_9__ {int numfriends; TYPE_5__* friendlist; int /*<<< orphan*/  fr_c; int /*<<< orphan*/  fr; int /*<<< orphan*/  friend_connectionstatuschange_internal_userdata; int /*<<< orphan*/  (* friend_connectionstatuschange_internal ) (TYPE_1__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ Messenger ;
typedef  int /*<<< orphan*/  Friend ;

/* Variables and functions */
 int FAERR_NOMEM ; 
 scalar_t__ FRIENDCONN_STATUS_CONNECTED ; 
 int /*<<< orphan*/  MESSENGER_CALLBACK_INDEX ; 
 scalar_t__ NOFRIEND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(Messenger *m, int32_t friendnumber)
{
    if (FUNC3(m, friendnumber))
        return -1;

    if (m->friend_connectionstatuschange_internal)
        m->friend_connectionstatuschange_internal(m, friendnumber, 0, m->friend_connectionstatuschange_internal_userdata);

    FUNC0(m, friendnumber);
    FUNC7(&(m->fr), m->friendlist[friendnumber].real_pk);
    FUNC2(m->fr_c, m->friendlist[friendnumber].friendcon_id, MESSENGER_CALLBACK_INDEX, 0, 0, 0, 0, 0);

    if (FUNC1(m->fr_c, m->friendlist[friendnumber].friendcon_id) == FRIENDCONN_STATUS_CONNECTED) {
        FUNC8(m, m->friendlist[friendnumber].friendcon_id);
    }

    FUNC4(m->fr_c, m->friendlist[friendnumber].friendcon_id);
    FUNC5(&(m->friendlist[friendnumber]), 0, sizeof(Friend));
    uint32_t i;

    for (i = m->numfriends; i != 0; --i) {
        if (m->friendlist[i - 1].status != NOFRIEND)
            break;
    }

    m->numfriends = i;

    if (FUNC6(m, m->numfriends) != 0)
        return FAERR_NOMEM;

    return 0;
}