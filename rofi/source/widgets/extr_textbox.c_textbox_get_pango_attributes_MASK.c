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
struct TYPE_3__ {int /*<<< orphan*/  layout; } ;
typedef  TYPE_1__ textbox ;
typedef  int /*<<< orphan*/  PangoAttrList ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 

PangoAttrList *FUNC1 ( textbox *tb )
{
    if ( tb == NULL ) {
        return NULL;
    }
    return FUNC0 ( tb->layout );
}