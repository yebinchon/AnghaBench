#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  package; } ;
typedef  TYPE_1__ msi_dialog ;
struct TYPE_9__ {int attributes; int /*<<< orphan*/  name; int /*<<< orphan*/  hwnd; int /*<<< orphan*/  property; } ;
typedef  TYPE_2__ msi_control ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int msidbControlAttributesIndirect ; 

__attribute__((used)) static BOOL FUNC10( msi_dialog *dialog, msi_control *control )
{
    LPWSTR buf, prop;
    BOOL indirect;
    BOOL valid;

    indirect = control->attributes & msidbControlAttributesIndirect;
    prop = FUNC4( dialog, control->property, indirect );

    buf = FUNC9( control->hwnd );

    if ( !FUNC7( buf ) )
    {
        /* FIXME: display an error message box */
        FUNC0("Invalid path %s\n", FUNC3( buf ));
        valid = FALSE;
        FUNC1( control->hwnd );
    }
    else
    {
        valid = TRUE;
        FUNC5( dialog->package, prop, buf );
    }

    FUNC6( dialog, control );

    FUNC2("edit %s contents changed, set %s\n", FUNC3(control->name),
          FUNC3(prop));

    FUNC8( buf );
    FUNC8( prop );

    return valid;
}