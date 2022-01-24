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
struct TYPE_3__ {scalar_t__ protocol; int /*<<< orphan*/  clsid; int /*<<< orphan*/  cf; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* object_creation ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
    unsigned int i;

    for(i = 0; i < FUNC0(object_creation); i++) {
        if(object_creation[i].protocol)
            FUNC1(object_creation[i].cf, object_creation[i].clsid,
                                      object_creation[i].protocol, TRUE);
    }
}