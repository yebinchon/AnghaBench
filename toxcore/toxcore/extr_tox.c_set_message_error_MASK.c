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
typedef  int /*<<< orphan*/  TOX_ERR_FRIEND_SEND_MESSAGE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TOX_ERR_FRIEND_SEND_MESSAGE_FRIEND_NOT_CONNECTED ; 
 int /*<<< orphan*/  TOX_ERR_FRIEND_SEND_MESSAGE_FRIEND_NOT_FOUND ; 
 int /*<<< orphan*/  TOX_ERR_FRIEND_SEND_MESSAGE_OK ; 
 int /*<<< orphan*/  TOX_ERR_FRIEND_SEND_MESSAGE_SENDQ ; 
 int /*<<< orphan*/  TOX_ERR_FRIEND_SEND_MESSAGE_TOO_LONG ; 

__attribute__((used)) static void FUNC1(int ret, TOX_ERR_FRIEND_SEND_MESSAGE *error)
{
    switch (ret) {
        case 0:
            FUNC0(error, TOX_ERR_FRIEND_SEND_MESSAGE_OK);
            break;

        case -1:
            FUNC0(error, TOX_ERR_FRIEND_SEND_MESSAGE_FRIEND_NOT_FOUND);
            break;

        case -2:
            FUNC0(error, TOX_ERR_FRIEND_SEND_MESSAGE_TOO_LONG);
            break;

        case -3:
            FUNC0(error, TOX_ERR_FRIEND_SEND_MESSAGE_FRIEND_NOT_CONNECTED);
            break;

        case -4:
            FUNC0(error, TOX_ERR_FRIEND_SEND_MESSAGE_SENDQ);
            break;

        case -5:
            /* can't happen */
            break;
    }
}