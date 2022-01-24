#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ stream ;
typedef  int /*<<< orphan*/  robj ;
typedef  int /*<<< orphan*/  client ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

void FUNC4(client *c, stream *s, int maxlen_arg_idx) {
    robj *maxlen_obj = FUNC1(s->length);
    robj *equal_obj = FUNC0("=",1);

    FUNC3(c,maxlen_arg_idx,maxlen_obj);
    FUNC3(c,maxlen_arg_idx-1,equal_obj);

    FUNC2(equal_obj);
    FUNC2(maxlen_obj);
}