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
struct TYPE_4__ {int /*<<< orphan*/  wanted_by; int /*<<< orphan*/  wants; int /*<<< orphan*/  after; int /*<<< orphan*/  before; struct TYPE_4__* pid_file; struct TYPE_4__* description; struct TYPE_4__* path; struct TYPE_4__* name; } ;
typedef  TYPE_1__ SysvStub ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(SysvStub *s) {
        if (!s)
                return;

        FUNC0(s->name);
        FUNC0(s->path);
        FUNC0(s->description);
        FUNC0(s->pid_file);
        FUNC1(s->before);
        FUNC1(s->after);
        FUNC1(s->wants);
        FUNC1(s->wanted_by);
        FUNC0(s);
}