#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
struct TYPE_6__ {TYPE_1__** argv; } ;
typedef  TYPE_2__ client ;
struct TYPE_5__ {scalar_t__ ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(client *c) {
    sds cmd = FUNC2((char*) c->argv[0]->ptr);
    FUNC3(cmd);
    FUNC0(c,
        "Unknown subcommand or wrong number of arguments for '%s'. Try %s HELP.",
        (char*)c->argv[1]->ptr,cmd);
    FUNC1(cmd);
}