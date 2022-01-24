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
struct TYPE_6__ {int /*<<< orphan*/  events; int /*<<< orphan*/  sigint_event; int /*<<< orphan*/  sigterm_event; int /*<<< orphan*/  input_event; int /*<<< orphan*/  url; int /*<<< orphan*/  current_cursor; int /*<<< orphan*/  last_cursor; int /*<<< orphan*/  answer; int /*<<< orphan*/  header; int /*<<< orphan*/  easy; } ;
typedef  TYPE_1__ Uploader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(Uploader *u) {
        FUNC0(u);

        FUNC3(u->easy);
        FUNC4(u->header);
        FUNC5(u->answer);

        FUNC5(u->last_cursor);
        FUNC5(u->current_cursor);

        FUNC5(u->url);

        u->input_event = FUNC6(u->input_event);

        FUNC1(u);
        FUNC2(u);

        FUNC6(u->sigterm_event);
        FUNC6(u->sigint_event);
        FUNC7(u->events);
}