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
struct TYPE_3__ {int /*<<< orphan*/  hWndFocus; int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_1__ msi_dialog ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static void FUNC2( msi_dialog *dialog )
{
    HWND hwnd = dialog->hWndFocus;

    hwnd = FUNC0( dialog->hwnd, hwnd, TRUE);
    hwnd = FUNC0( dialog->hwnd, hwnd, FALSE);
    FUNC1( hwnd );
    dialog->hWndFocus = hwnd;
}