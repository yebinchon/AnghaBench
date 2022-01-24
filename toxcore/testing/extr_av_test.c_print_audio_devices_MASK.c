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
struct TYPE_3__ {char* name; } ;
typedef  TYPE_1__ PaDeviceInfo ;

/* Variables and functions */
 int FUNC0 () ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 

int FUNC3()
{
    int i = 0;

    for (i = 0; i < FUNC0(); ++i) {
        const PaDeviceInfo *info = FUNC1(i);

        if (info)
            FUNC2("%d) %s\n", i, info->name);
    }

    return 0;
}