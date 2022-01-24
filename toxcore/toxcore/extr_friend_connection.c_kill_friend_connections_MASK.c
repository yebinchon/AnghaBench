#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ num_cons; int /*<<< orphan*/  dht; } ;
typedef  TYPE_1__ Friend_Connections ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 

void FUNC3(Friend_Connections *fr_c)
{
    if (!fr_c)
        return;

    uint32_t i;

    for (i = 0; i < fr_c->num_cons; ++i) {
        FUNC2(fr_c, i);
    }

    FUNC0(fr_c->dht);
    FUNC1(fr_c);
}