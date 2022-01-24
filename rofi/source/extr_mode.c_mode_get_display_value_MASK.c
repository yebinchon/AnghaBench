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
struct TYPE_4__ {char* (* _get_display_value ) (TYPE_1__ const*,unsigned int,int*,int /*<<< orphan*/ **,int) ;} ;
typedef  TYPE_1__ Mode ;
typedef  int /*<<< orphan*/  GList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (TYPE_1__ const*,unsigned int,int*,int /*<<< orphan*/ **,int) ; 

char * FUNC2 ( const Mode *mode, unsigned int selected_line, int *state, GList **attribute_list, int get_entry )
{
    FUNC0 ( mode != NULL );
    FUNC0 ( state != NULL );
    FUNC0 ( mode->_get_display_value != NULL );

    return mode->_get_display_value ( mode, selected_line, state, attribute_list, get_entry );
}