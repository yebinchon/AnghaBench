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
struct TYPE_3__ {char* ptr; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  client ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

double FUNC2(client *c, robj *unit) {
    char *u = unit->ptr;

    if (!FUNC1(u, "m")) {
        return 1;
    } else if (!FUNC1(u, "km")) {
        return 1000;
    } else if (!FUNC1(u, "ft")) {
        return 0.3048;
    } else if (!FUNC1(u, "mi")) {
        return 1609.34;
    } else {
        FUNC0(c,
            "unsupported unit provided. please use m, km, ft, mi");
        return -1;
    }
}