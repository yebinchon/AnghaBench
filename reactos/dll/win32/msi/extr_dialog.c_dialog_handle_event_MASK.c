#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_6__* package; } ;
typedef  TYPE_1__ msi_dialog ;
struct TYPE_13__ {int progress_max; int progress_current; int attributes; int /*<<< orphan*/  hwnd; int /*<<< orphan*/  property; int /*<<< orphan*/  progress_backwards; } ;
typedef  TYPE_2__ msi_control ;
typedef  int /*<<< orphan*/  const WCHAR ;
struct TYPE_15__ {int action_progress_increment; } ;
struct TYPE_14__ {int /*<<< orphan*/  Directory; } ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  TYPE_3__ MSIFEATURE ;
typedef  int /*<<< orphan*/  const* LPWSTR ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  const* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  PBM_SETPOS ; 
 int /*<<< orphan*/  PBM_SETRANGE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC12 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC13 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/  const*) ; 
 TYPE_3__* FUNC16 (TYPE_2__*) ; 
 int msidbControlAttributesIndirect ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* szEmpty ; 
 int /*<<< orphan*/  szProgress ; 
 int /*<<< orphan*/  szProperty ; 
 int /*<<< orphan*/  szSelectionPath ; 
 int /*<<< orphan*/  szText ; 

__attribute__((used)) static void FUNC18( msi_dialog *dialog, const WCHAR *control,
                                 const WCHAR *attribute, MSIRECORD *rec )
{
    msi_control* ctrl;

    ctrl = FUNC12( dialog, control );
    if (!ctrl)
        return;
    if( !FUNC17( attribute, szText ) )
    {
        const WCHAR *font_text, *text = NULL;
        WCHAR *font, *text_fmt = NULL;

        font_text = FUNC3( rec , 1 );
        font = FUNC13( font_text, &text );
        FUNC9( dialog->package, text, &text_fmt );
        if (text_fmt) text = text_fmt;
        else text = szEmpty;

        FUNC6( ctrl->hwnd, text );

        FUNC15( font );
        FUNC15( text_fmt );
        FUNC10( NULL );
    }
    else if( !FUNC17( attribute, szProgress ) )
    {
        DWORD func, val1, val2, units;

        func = FUNC2( rec, 1 );
        val1 = FUNC2( rec, 2 );
        val2 = FUNC2( rec, 3 );

        FUNC7("progress: func %u val1 %u val2 %u\n", func, val1, val2);

        units = val1 / 512;
        switch (func)
        {
        case 0: /* init */
            FUNC5( ctrl->hwnd, PBM_SETRANGE, 0, FUNC1(0,100) );
            if (val2)
            {
                ctrl->progress_max = units ? units : 100;
                ctrl->progress_current = units;
                ctrl->progress_backwards = TRUE;
                FUNC5( ctrl->hwnd, PBM_SETPOS, 100, 0 );
            }
            else
            {
                ctrl->progress_max = units ? units : 100;
                ctrl->progress_current = 0;
                ctrl->progress_backwards = FALSE;
                FUNC5( ctrl->hwnd, PBM_SETPOS, 0, 0 );
            }
            break;
        case 1: /* action data increment */
            if (val2) dialog->package->action_progress_increment = val1;
            else dialog->package->action_progress_increment = 0;
            break;
        case 2: /* move */
            if (ctrl->progress_backwards)
            {
                if (units >= ctrl->progress_current) ctrl->progress_current -= units;
                else ctrl->progress_current = 0;
            }
            else
            {
                if (ctrl->progress_current + units < ctrl->progress_max) ctrl->progress_current += units;
                else ctrl->progress_current = ctrl->progress_max;
            }
            FUNC5( ctrl->hwnd, PBM_SETPOS, FUNC4(100, ctrl->progress_current, ctrl->progress_max), 0 );
            break;
        case 3: /* add */
            ctrl->progress_max += units;
            break;
        default:
            FUNC0("Unknown progress message %u\n", func);
            break;
        }
    }
    else if ( !FUNC17( attribute, szProperty ) )
    {
        MSIFEATURE *feature = FUNC16( ctrl );
        if (feature) FUNC14( dialog->package, ctrl->property, feature->Directory );
    }
    else if ( !FUNC17( attribute, szSelectionPath ) )
    {
        BOOL indirect = ctrl->attributes & msidbControlAttributesIndirect;
        LPWSTR path = FUNC11( dialog, ctrl->property, indirect );
        if (!path) return;
        FUNC6( ctrl->hwnd, path );
        FUNC15(path);
    }
    else
    {
        FUNC0("Attribute %s not being set\n", FUNC8(attribute));
        return;
    }
}