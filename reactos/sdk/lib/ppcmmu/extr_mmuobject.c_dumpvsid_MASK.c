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
struct TYPE_3__ {int vsid; scalar_t__* tree; } ;
typedef  TYPE_1__ MmuVsidInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 

void FUNC2(MmuVsidInfo *vsid)
{
    int i;

    FUNC1("vsid %d (%x):\n", vsid->vsid>>4, vsid->vsid<<28);
    for (i = 0; i < 256; i++)
    {
        if (vsid->tree[i])
        {
            FUNC0((vsid->vsid<<28) | i << 20, vsid->tree[i]);
        }
    }
}