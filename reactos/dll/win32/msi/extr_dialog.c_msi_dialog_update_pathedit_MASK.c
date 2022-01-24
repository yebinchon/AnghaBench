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
typedef  int /*<<< orphan*/  msi_dialog ;
struct TYPE_4__ {int attributes; int /*<<< orphan*/  hwnd; int /*<<< orphan*/  property; } ;
typedef  TYPE_1__ msi_control ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  EM_SETSEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int msidbControlAttributesIndirect ; 
 int /*<<< orphan*/  szPathEdit ; 

__attribute__((used)) static void FUNC5( msi_dialog *dialog, msi_control *control )
{
    LPWSTR prop, path;
    BOOL indirect;

    if (!control && !(control = FUNC3( dialog, szPathEdit )))
       return;

    indirect = control->attributes & msidbControlAttributesIndirect;
    prop = FUNC2( dialog, control->property, indirect );
    path = FUNC2( dialog, prop, TRUE );

    FUNC1( control->hwnd, path );
    FUNC0( control->hwnd, EM_SETSEL, 0, -1 );

    FUNC4( path );
    FUNC4( prop );
}