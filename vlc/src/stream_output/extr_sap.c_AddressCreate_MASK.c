#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct sockaddr {int dummy; } ;
struct TYPE_6__ {int fd; int origlen; int /*<<< orphan*/  thread; int /*<<< orphan*/ * first; scalar_t__ session_count; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  interval; int /*<<< orphan*/  orig; int /*<<< orphan*/  group; } ;
typedef  TYPE_1__ sap_address_t ;

/* Variables and functions */
 int /*<<< orphan*/  IPPORT_SAP ; 
 int /*<<< orphan*/  RunThread ; 
 int /*<<< orphan*/  VLC_THREAD_PRIORITY_LOW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct sockaddr*,int*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static sap_address_t *FUNC11 (vlc_object_t *obj, const char *group)
{
    int fd = FUNC5 (obj, group, IPPORT_SAP, 255);
    if (fd == -1)
        return NULL;

    sap_address_t *addr = FUNC2 (sizeof (*addr));
    if (addr == NULL)
    {
        FUNC4 (fd);
        return NULL;
    }

    FUNC6 (addr->group, group, sizeof (addr->group));
    addr->fd = fd;
    addr->origlen = sizeof (addr->orig);
    FUNC1 (fd, (struct sockaddr *)&addr->orig, &addr->origlen);

    addr->interval = FUNC7 (obj, "sap-interval");
    FUNC10 (&addr->lock);
    FUNC9 (&addr->wait);
    addr->session_count = 0;
    addr->first = NULL;

    if (FUNC8 (&addr->thread, RunThread, addr, VLC_THREAD_PRIORITY_LOW))
    {
        FUNC3 (obj, "unable to spawn SAP announce thread");
        FUNC4 (fd);
        FUNC0 (addr);
        return NULL;
    }
    return addr;
}