#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* localfile; struct TYPE_4__* filename; struct TYPE_4__* transforms; struct TYPE_4__* products; struct TYPE_4__* patchcode; } ;
typedef  TYPE_1__ MSIPATCHINFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1( MSIPATCHINFO *patch )
{
    FUNC0( patch->patchcode );
    FUNC0( patch->products );
    FUNC0( patch->transforms );
    FUNC0( patch->filename );
    FUNC0( patch->localfile );
    FUNC0( patch );
}