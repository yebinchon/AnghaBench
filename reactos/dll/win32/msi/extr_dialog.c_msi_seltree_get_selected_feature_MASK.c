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
struct msi_selection_tree_info {int /*<<< orphan*/  selected; } ;
struct TYPE_3__ {int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_1__ msi_control ;
typedef  int /*<<< orphan*/  MSIFEATURE ;

/* Variables and functions */
 struct msi_selection_tree_info* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  szButtonData ; 

__attribute__((used)) static MSIFEATURE *FUNC2( msi_control *control )
{
    struct msi_selection_tree_info *info = FUNC0( control->hwnd, szButtonData );
    return FUNC1( control->hwnd, info->selected );
}