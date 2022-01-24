#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ type; scalar_t__ uid_set; scalar_t__ uid; scalar_t__ gid_set; scalar_t__ gid; int /*<<< orphan*/  shell; int /*<<< orphan*/  home; int /*<<< orphan*/  description; int /*<<< orphan*/  gid_path; int /*<<< orphan*/  uid_path; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ Item ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(Item *a, Item *b) {
        FUNC0(a);
        FUNC0(b);

        if (a->type != b->type)
                return false;

        if (!FUNC1(a->name, b->name))
                return false;

        if (!FUNC1(a->uid_path, b->uid_path))
                return false;

        if (!FUNC1(a->gid_path, b->gid_path))
                return false;

        if (!FUNC1(a->description, b->description))
                return false;

        if (a->uid_set != b->uid_set)
                return false;

        if (a->uid_set && a->uid != b->uid)
                return false;

        if (a->gid_set != b->gid_set)
                return false;

        if (a->gid_set && a->gid != b->gid)
                return false;

        if (!FUNC1(a->home, b->home))
                return false;

        if (!FUNC1(a->shell, b->shell))
                return false;

        return true;
}