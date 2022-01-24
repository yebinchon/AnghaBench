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
struct TYPE_4__ {int /*<<< orphan*/  (* free ) (TYPE_1__*) ;scalar_t__ name; } ;
typedef  TYPE_1__ widget ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2 ( widget *wid )
{
    if ( wid ) {
        if ( wid->name ) {
            FUNC0 ( wid->name );
        }
        if ( wid->free ) {
            wid->free ( wid );
        }
        return;
    }
}