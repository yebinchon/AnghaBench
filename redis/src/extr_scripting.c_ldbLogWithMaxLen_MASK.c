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
struct TYPE_2__ {scalar_t__ maxlen; int maxlen_hint_sent; } ;

/* Variables and functions */
 TYPE_1__ ldb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC5(sds entry) {
    int trimmed = 0;
    if (ldb.maxlen && FUNC2(entry) > ldb.maxlen) {
        FUNC4(entry,0,ldb.maxlen-1);
        entry = FUNC1(entry," ...",4);
        trimmed = 1;
    }
    FUNC0(entry);
    if (trimmed && ldb.maxlen_hint_sent == 0) {
        ldb.maxlen_hint_sent = 1;
        FUNC0(FUNC3(
        "<hint> The above reply was trimmed. Use 'maxlen 0' to disable trimming."));
    }
}