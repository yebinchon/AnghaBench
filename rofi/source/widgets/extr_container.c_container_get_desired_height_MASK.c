#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  widget ;
struct TYPE_2__ {scalar_t__ child; } ;
typedef  TYPE_1__ container ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2 ( widget *widget )
{
    container *b     = (container *) widget;
    int       height = 0;
    if ( b->child ) {
        height += FUNC0 ( b->child );
    }
    height += FUNC1 ( widget );
    return height;
}