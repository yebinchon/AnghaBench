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
typedef  int /*<<< orphan*/  robj ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_STRING ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

robj *FUNC3(streamID *id) {
    return FUNC0(OBJ_STRING, FUNC1(FUNC2(),"%U-%U",
                        id->ms,id->seq));
}