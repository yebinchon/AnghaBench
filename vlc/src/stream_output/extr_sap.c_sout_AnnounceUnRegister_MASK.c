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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_7__ {struct TYPE_7__* data; struct TYPE_7__* next; } ;
typedef  TYPE_1__ session_descriptor_t ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; int /*<<< orphan*/  session_count; TYPE_1__* first; struct TYPE_8__* next; } ;
typedef  TYPE_2__ sap_address_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* sap_addrs ; 
 int /*<<< orphan*/  sap_mutex ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7 (vlc_object_t *obj, session_descriptor_t *session)
{
    sap_address_t *addr, **paddr;
    session_descriptor_t **psession;

    FUNC3 (obj, "removing SAP session");
    FUNC5 (&sap_mutex);
    paddr = &sap_addrs;
    for (;;)
    {
        addr = *paddr;
        FUNC1 (addr != NULL);

        psession = &addr->first;
        FUNC5 (&addr->lock);
        while (*psession != NULL)
        {
            if (*psession == session)
                goto found;
            psession = &(*psession)->next;
        }
        FUNC6 (&addr->lock);
        paddr = &addr->next;
    }

found:
    *psession = session->next;

    if (addr->first == NULL)
        /* Last session for this address -> unlink the address */
        *paddr = addr->next;
    FUNC6 (&sap_mutex);

    if (addr->first == NULL)
    {
        /* Last session for this address -> unlink the address */
        FUNC6 (&addr->lock);
        FUNC0 (addr);
    }
    else
    {
        addr->session_count--;
        FUNC4 (&addr->wait);
        FUNC6 (&addr->lock);
    }

    FUNC2(session->data);
    FUNC2(session);
}