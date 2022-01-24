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
struct TYPE_4__ {int /*<<< orphan*/  (* _result ) (TYPE_1__*,int,char**,unsigned int) ;} ;
typedef  int /*<<< orphan*/  ModeMode ;
typedef  TYPE_1__ Mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,char**,unsigned int) ; 

ModeMode FUNC2 ( Mode *mode, int menu_retv, char **input, unsigned int selected_line )
{
    FUNC0 ( mode != NULL );
    FUNC0 ( mode->_result != NULL );
    FUNC0 ( input != NULL );
    return mode->_result ( mode, menu_retv, input, selected_line );
}