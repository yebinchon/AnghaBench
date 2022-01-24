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
struct TYPE_3__ {int /*<<< orphan*/  seq; int /*<<< orphan*/  ms; } ;
typedef  TYPE_1__ streamID ;
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  rio ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(rio *r,streamID *id) {
    int retval;

    sds replyid = FUNC1(FUNC2(),"%U-%U",id->ms,id->seq);
    if ((retval = FUNC0(r,replyid,FUNC4(replyid))) == 0) return 0;
    FUNC3(replyid);
    return retval;
}