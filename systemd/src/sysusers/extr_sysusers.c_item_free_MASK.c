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
struct TYPE_6__ {int /*<<< orphan*/  shell; int /*<<< orphan*/  home; int /*<<< orphan*/  description; int /*<<< orphan*/  gid_path; int /*<<< orphan*/  uid_path; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ Item ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static Item* FUNC2(Item *i) {
        if (!i)
                return NULL;

        FUNC0(i->name);
        FUNC0(i->uid_path);
        FUNC0(i->gid_path);
        FUNC0(i->description);
        FUNC0(i->home);
        FUNC0(i->shell);
        return FUNC1(i);
}