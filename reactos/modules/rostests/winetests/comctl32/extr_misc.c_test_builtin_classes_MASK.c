#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int CS_DBLCLKS ; 
 int CS_DROPSHADOW ; 
 int CS_GLOBALCLASS ; 
 int CS_HREDRAW ; 
 int CS_PARENTDC ; 
 int CS_SAVEBITS ; 
 int CS_VREDRAW ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void)
{
    /* check style bits */
    FUNC0( "Button",     1, CS_PARENTDC | CS_DBLCLKS | CS_HREDRAW | CS_VREDRAW | CS_GLOBALCLASS, 0, FALSE );
    FUNC0( "ComboBox",   1, CS_PARENTDC | CS_DBLCLKS | CS_HREDRAW | CS_VREDRAW | CS_GLOBALCLASS, 0, FALSE );
    FUNC0( "Edit",       1, CS_PARENTDC | CS_DBLCLKS | CS_GLOBALCLASS, 0, FALSE );
    FUNC0( "ListBox",    1, CS_PARENTDC | CS_DBLCLKS | CS_GLOBALCLASS, 0, FALSE );
    FUNC0( "ScrollBar",  1, CS_PARENTDC | CS_DBLCLKS | CS_HREDRAW | CS_VREDRAW | CS_GLOBALCLASS, 0, FALSE );
    FUNC0( "Static",     1, CS_PARENTDC | CS_DBLCLKS | CS_GLOBALCLASS, 0, FALSE );
    FUNC0( "ComboLBox",  1, CS_SAVEBITS | CS_DBLCLKS | CS_DROPSHADOW | CS_GLOBALCLASS, CS_DROPSHADOW, FALSE );
}