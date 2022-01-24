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
struct TYPE_3__ {scalar_t__ box; scalar_t__ icon; scalar_t__ textbox; } ;
typedef  TYPE_1__ _listview_row ;
typedef  int /*<<< orphan*/  TextBoxFontType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3 ( _listview_row r, TextBoxFontType type )
{
    FUNC1 ( FUNC0(r.box), type);
    FUNC1 ( FUNC0(r.textbox), type);
    if ( r.icon ) {
        FUNC1 ( FUNC0(r.icon), type);
    }
    FUNC2 ( FUNC0( r.box  ) );
}