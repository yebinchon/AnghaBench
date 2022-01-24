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
struct RARProgramCode {struct RARProgramCode* globalbackup; struct RARProgramCode* staticdata; int /*<<< orphan*/  prog; struct RARProgramCode* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct RARProgramCode*) ; 

__attribute__((used)) static void FUNC2(struct RARProgramCode *prog)
{
    while (prog) {
        struct RARProgramCode *next = prog->next;
        FUNC0(prog->prog);
        FUNC1(prog->staticdata);
        FUNC1(prog->globalbackup);
        FUNC1(prog);
        prog = next;
    }
}