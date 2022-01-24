#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
struct TYPE_8__ {int argc; TYPE_1__** argv; } ;
typedef  TYPE_2__ client ;
struct TYPE_9__ {int /*<<< orphan*/  syntaxerr; } ;
struct TYPE_7__ {char* ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_3__ shared ; 

void FUNC5(client *c) {
    char *section = c->argc == 2 ? c->argv[1]->ptr : "default";

    if (c->argc > 2) {
        FUNC0(c,shared.syntaxerr);
        return;
    }
    sds info = FUNC2(section);
    FUNC1(c,info,FUNC4(info),"txt");
    FUNC3(info);
}