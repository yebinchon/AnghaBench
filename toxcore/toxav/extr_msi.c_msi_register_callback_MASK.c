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
typedef  int /*<<< orphan*/  msi_action_cb ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/ ** callbacks; } ;
typedef  TYPE_1__ MSISession ;
typedef  size_t MSICallbackID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2 (MSISession *session, msi_action_cb *callback, MSICallbackID id)
{
    if (!session)
        return;

    FUNC0(session->mutex);
    session->callbacks[id] = callback;
    FUNC1(session->mutex);
}