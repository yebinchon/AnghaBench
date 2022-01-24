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
struct TYPE_3__ {int size; scalar_t__* table; } ;
typedef  TYPE_1__ dictht ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1(dictht ht) {
    if (ht.table == NULL) {
        FUNC0("NULL\n");
    } else {
        int j;
        for (j = 0; j < ht.size; j++) {
            FUNC0("%c", ht.table[j] ? '1' : '0');
        }
        FUNC0("\n");
    }
}