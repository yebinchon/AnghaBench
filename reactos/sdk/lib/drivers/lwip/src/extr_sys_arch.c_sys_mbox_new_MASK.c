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
struct TYPE_3__ {int Valid; int /*<<< orphan*/  Event; int /*<<< orphan*/  ListHead; int /*<<< orphan*/  Lock; } ;
typedef  TYPE_1__ sys_mbox_t ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NotificationEvent ; 

err_t
FUNC3(sys_mbox_t *mbox, int size)
{    
    FUNC2(&mbox->Lock);
    
    FUNC0(&mbox->ListHead);
    
    FUNC1(&mbox->Event, NotificationEvent, FALSE);
    
    mbox->Valid = 1;
    
    return ERR_OK;
}