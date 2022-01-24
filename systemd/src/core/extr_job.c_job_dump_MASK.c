#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int id; int /*<<< orphan*/  irreversible; int /*<<< orphan*/  state; int /*<<< orphan*/  type; TYPE_1__* unit; } ;
struct TYPE_9__ {char* id; } ;
typedef  TYPE_2__ Job ;
typedef  TYPE_2__ FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,char const*,int,char const*,char*,char*,char const*,char*,char const*,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char const*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(Job *j, FILE *f, const char *prefix) {
        FUNC0(j);
        FUNC0(f);

        prefix = FUNC5(prefix);

        FUNC1(f,
                "%s-> Job %u:\n"
                "%s\tAction: %s -> %s\n"
                "%s\tState: %s\n"
                "%s\tIrreversible: %s\n"
                "%s\tMay GC: %s\n",
                prefix, j->id,
                prefix, j->unit->id, FUNC4(j->type),
                prefix, FUNC3(j->state),
                prefix, FUNC6(j->irreversible),
                prefix, FUNC6(FUNC2(j)));
}