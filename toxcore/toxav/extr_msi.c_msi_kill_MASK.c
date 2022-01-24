#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct Messenger {int dummy; } ;
struct TYPE_10__ {struct TYPE_10__* next; int /*<<< orphan*/  friend_number; } ;
struct TYPE_9__ {int /*<<< orphan*/  mutex; scalar_t__ messenger; int /*<<< orphan*/  calls_head; scalar_t__ calls; } ;
typedef  TYPE_1__ MSISession ;
typedef  int /*<<< orphan*/  MSIMessage ;
typedef  TYPE_2__ MSICall ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_2__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct Messenger*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  requ_pop ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC11 (MSISession *session)
{
    if (session == NULL) {
        FUNC1("Tried to terminate non-existing session");
        return -1;
    }

    FUNC5((struct Messenger *) session->messenger, NULL, NULL);

    if (FUNC8(session->mutex) != 0) {
        FUNC1 ("Failed to aquire lock on msi mutex");
        return -1;
    }

    if (session->calls) {
        MSIMessage msg;
        FUNC6(&msg, requ_pop);

        MSICall *it = FUNC3(session, session->calls_head);

        while (it) {
            FUNC10(session->messenger, it->friend_number, &msg);
            MSICall *temp_it = it;
            it = it->next;
            FUNC4(temp_it); /* This will eventually free session->calls */
        }
    }

    FUNC9(session->mutex);
    FUNC7(session->mutex);

    FUNC0("Terminated session: %p", session);
    FUNC2 (session);
    return 0;
}