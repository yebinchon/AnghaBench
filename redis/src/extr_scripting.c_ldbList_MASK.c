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
struct TYPE_2__ {int lines; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 TYPE_1__ ldb ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(int around, int context) {
    int j;

    for (j = 1; j <= ldb.lines; j++) {
        if (around != 0 && FUNC0(around-j) > context) continue;
        FUNC1(j);
    }
}