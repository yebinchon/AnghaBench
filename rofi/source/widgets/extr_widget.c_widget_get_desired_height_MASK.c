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
struct TYPE_4__ {int (* get_desired_height ) (TYPE_1__*) ;int h; } ;
typedef  TYPE_1__ widget ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 

int FUNC1 ( widget *wid )
{
    if ( wid == NULL ) {
        return 0;
    }
    if ( wid->get_desired_height ) {
        return wid->get_desired_height ( wid );
    }
    return wid->h;
}