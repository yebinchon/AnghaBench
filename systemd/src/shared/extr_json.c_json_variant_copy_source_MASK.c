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
struct TYPE_6__ {int /*<<< orphan*/  source; int /*<<< orphan*/  column; int /*<<< orphan*/  line; } ;
typedef  TYPE_1__ JsonVariant ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(JsonVariant *v, JsonVariant *from) {
        FUNC0(v);
        FUNC0(from);

        if (!FUNC2(from))
                return;

        v->line = from->line;
        v->column = from->column;
        v->source = FUNC1(from->source);
}