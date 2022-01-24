#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vtable_member {int /*<<< orphan*/  member; int /*<<< orphan*/  interface; int /*<<< orphan*/  path; } ;
struct siphash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vtable_member const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct siphash*) ; 

__attribute__((used)) static void FUNC2(const struct vtable_member *m, struct siphash *state) {
        FUNC0(m);

        FUNC1(m->path, state);
        FUNC1(m->interface, state);
        FUNC1(m->member, state);
}