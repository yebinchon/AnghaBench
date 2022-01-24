#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  os_release; int /*<<< orphan*/  machine_info; int /*<<< orphan*/  hostname; int /*<<< orphan*/  path; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ Image ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Image *FUNC4(Image *i) {
        FUNC0(i);

        FUNC1(i->name);
        FUNC1(i->path);

        FUNC1(i->hostname);
        FUNC3(i->machine_info);
        FUNC3(i->os_release);

        return FUNC2(i);
}