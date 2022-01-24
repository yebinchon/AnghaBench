#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * messenger; int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  Messenger ;
typedef  TYPE_1__ MSISession ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  handle_msi_packet ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  on_peer_status ; 

MSISession *FUNC7 (Messenger *m)
{
    if (m == NULL) {
        FUNC1("Could not init session on empty messenger!");
        return NULL;
    }

    MSISession *retu = FUNC2 (sizeof (MSISession), 1);

    if (retu == NULL) {
        FUNC1("Allocation failed! Program might misbehave!");
        return NULL;
    }

    if (FUNC3(retu->mutex) != 0) {
        FUNC1("Failed to init mutex! Program might misbehave");
        FUNC4(retu);
        return NULL;
    }

    retu->messenger = m;

    FUNC6(m, handle_msi_packet, retu);

    /* This is called when remote terminates session */
    FUNC5(m, on_peer_status, retu);

    FUNC0("New msi session: %p ", retu);
    return retu;
}