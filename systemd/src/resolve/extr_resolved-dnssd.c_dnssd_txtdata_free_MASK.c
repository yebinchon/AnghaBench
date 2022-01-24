#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  txt; int /*<<< orphan*/  rr; } ;
typedef  TYPE_1__ DnssdTxtData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 

DnssdTxtData *FUNC3(DnssdTxtData *txt_data) {
        if (!txt_data)
                return NULL;

        FUNC0(txt_data->rr);
        FUNC1(txt_data->txt);

        return FUNC2(txt_data);
}