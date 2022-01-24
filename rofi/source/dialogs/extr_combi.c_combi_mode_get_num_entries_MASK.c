#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int num_switchers; unsigned int* starts; unsigned int* lengths; TYPE_1__* switchers; } ;
struct TYPE_3__ {int /*<<< orphan*/  mode; } ;
typedef  int /*<<< orphan*/  Mode ;
typedef  TYPE_2__ CombiModePrivateData ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static unsigned int FUNC2 ( const Mode *sw )
{
    const CombiModePrivateData *pd    = (const CombiModePrivateData *) FUNC1 ( sw );
    unsigned int               length = 0;
    for ( unsigned int i = 0; i < pd->num_switchers; i++ ) {
        unsigned int entries = FUNC0 ( pd->switchers[i].mode );
        pd->starts[i]  = length;
        pd->lengths[i] = entries;
        length        += entries;
    }
    return length;
}