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
struct rewriteConfigState {int dummy; } ;
typedef  int /*<<< orphan*/  cwd ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rewriteConfigState*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct rewriteConfigState*,char*,char*,int /*<<< orphan*/ *) ; 

void FUNC3(struct rewriteConfigState *state) {
    char cwd[1024];

    if (FUNC0(cwd,sizeof(cwd)) == NULL) {
        FUNC1(state,"dir");
        return; /* no rewrite on error. */
    }
    FUNC2(state,"dir",cwd,NULL);
}