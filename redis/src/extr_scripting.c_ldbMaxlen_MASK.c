#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
struct TYPE_2__ {int maxlen_hint_sent; int maxlen; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ ldb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(sds *argv, int argc) {
    if (argc == 2) {
        int newval = FUNC0(argv[1]);
        ldb.maxlen_hint_sent = 1; /* User knows about this command. */
        if (newval != 0 && newval <= 60) newval = 60;
        ldb.maxlen = newval;
    }
    if (ldb.maxlen) {
        FUNC1(FUNC2(FUNC3(),"<value> replies are truncated at %d bytes.",(int)ldb.maxlen));
    } else {
        FUNC1(FUNC2(FUNC3(),"<value> replies are unlimited."));
    }
}