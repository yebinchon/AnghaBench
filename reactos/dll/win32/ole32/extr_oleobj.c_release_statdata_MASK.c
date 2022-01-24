#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * ptd; } ;
struct TYPE_5__ {int /*<<< orphan*/ * pAdvSink; TYPE_1__ formatetc; } ;
typedef  TYPE_2__ STATDATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(STATDATA *data)
{
    FUNC0(data->formatetc.ptd);
    data->formatetc.ptd = NULL;

    if(data->pAdvSink)
    {
        FUNC1(data->pAdvSink);
        data->pAdvSink = NULL;
    }
}