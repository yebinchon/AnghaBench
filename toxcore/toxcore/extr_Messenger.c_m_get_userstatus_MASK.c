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
typedef  scalar_t__ uint8_t ;
typedef  size_t int32_t ;
struct TYPE_6__ {TYPE_1__* friendlist; } ;
struct TYPE_5__ {scalar_t__ userstatus; } ;
typedef  TYPE_2__ Messenger ;

/* Variables and functions */
 scalar_t__ USERSTATUS_INVALID ; 
 scalar_t__ USERSTATUS_NONE ; 
 scalar_t__ FUNC0 (TYPE_2__ const*,size_t) ; 

uint8_t FUNC1(const Messenger *m, int32_t friendnumber)
{
    if (FUNC0(m, friendnumber))
        return USERSTATUS_INVALID;

    uint8_t status = m->friendlist[friendnumber].userstatus;

    if (status >= USERSTATUS_INVALID) {
        status = USERSTATUS_NONE;
    }

    return status;
}