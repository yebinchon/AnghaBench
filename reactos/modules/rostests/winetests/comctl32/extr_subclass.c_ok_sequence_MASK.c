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
struct message {scalar_t__ procnum; scalar_t__ wParam; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct message const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 struct message* sequence ; 

__attribute__((used)) static void FUNC3(const struct message *expected, const char *context)
{
    static const struct message end_of_sequence = { 0, 0 };
    const struct message *actual;

    FUNC0(&end_of_sequence);

    actual = sequence;

    while(expected->procnum && actual->procnum)
    {
        FUNC2(expected->procnum == actual->procnum,
            "%s: the procnum %d was expected, but got procnum %d instead\n",
            context, expected->procnum, actual->procnum);
        FUNC2(expected->wParam == actual->wParam,
            "%s: in procnum %d expecting wParam 0x%lx got 0x%lx\n",
            context, expected->procnum, expected->wParam, actual->wParam);
        expected++;
        actual++;
    }
    FUNC2(!expected->procnum, "Received fewer messages than expected\n");
    FUNC2(!actual->procnum, "Received more messages than expected\n");
    FUNC1();
}