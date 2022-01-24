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
struct TYPE_6__ {scalar_t__ uid_set; scalar_t__ uid; scalar_t__ gid_set; scalar_t__ gid; scalar_t__ mode_set; scalar_t__ mode; scalar_t__ age_set; scalar_t__ age; scalar_t__ mask_perms; scalar_t__ keep_first_level; scalar_t__ major_minor; int /*<<< orphan*/  argument; int /*<<< orphan*/  type; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ Item ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(Item *a, Item *b) {
        FUNC0(a);
        FUNC0(b);
        FUNC0(FUNC1(a->path, b->path));

        if (FUNC3(a->type) && FUNC3(b->type))
                /* check if the items are the same */
                return  FUNC2(a->argument, b->argument) &&

                        a->uid_set == b->uid_set &&
                        a->uid == b->uid &&

                        a->gid_set == b->gid_set &&
                        a->gid == b->gid &&

                        a->mode_set == b->mode_set &&
                        a->mode == b->mode &&

                        a->age_set == b->age_set &&
                        a->age == b->age &&

                        a->mask_perms == b->mask_perms &&

                        a->keep_first_level == b->keep_first_level &&

                        a->major_minor == b->major_minor;

        return true;
}