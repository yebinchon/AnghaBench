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
typedef  int /*<<< orphan*/  msi_dialog ;
struct TYPE_3__ {int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_1__ msi_control ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__* LPWSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CB_ADDSTRING ; 
 int FUNC0 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__*) ; 
 scalar_t__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 

__attribute__((used)) static void FUNC5( msi_dialog *dialog, msi_control *control )
{
    LPWSTR drives, ptr;
    DWORD size;

    size = FUNC0( 0, NULL );
    if ( !size ) return;

    drives = FUNC3( (size + 1) * sizeof(WCHAR) );
    if ( !drives ) return;

    FUNC0( size, drives );

    ptr = drives;
    while (*ptr)
    {
        FUNC1( control->hwnd, CB_ADDSTRING, 0, (LPARAM)ptr );
        ptr += FUNC2(ptr) + 1;
    }

    FUNC4( drives );
}