#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  fd; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; int /*<<< orphan*/  thread; int /*<<< orphan*/ * first; } ;
typedef  TYPE_1__ sap_address_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7 (sap_address_t *addr)
{
    FUNC0 (addr->first == NULL);

    FUNC3 (addr->thread);
    FUNC5 (addr->thread, NULL);
    FUNC4 (&addr->wait);
    FUNC6 (&addr->lock);
    FUNC2 (addr->fd);
    FUNC1 (addr);
}