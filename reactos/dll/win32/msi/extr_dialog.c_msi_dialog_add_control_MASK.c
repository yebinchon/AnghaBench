#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_1__ msi_dialog ;
typedef  int /*<<< orphan*/  msi_control ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  int /*<<< orphan*/  const* LPCWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int WS_DISABLED ; 
 int WS_EX_CLIENTEDGE ; 
 int WS_VISIBLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int msidbControlAttributesEnabled ; 
 int msidbControlAttributesSunken ; 
 int msidbControlAttributesVisible ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  szScrollableText ; 

__attribute__((used)) static msi_control *FUNC7( msi_dialog *dialog,
                MSIRECORD *rec, LPCWSTR szCls, DWORD style )
{
    DWORD attributes;
    const WCHAR *text = NULL, *name, *control_type;
    DWORD exstyle = 0;

    name = FUNC1( rec, 2 );
    control_type = FUNC1( rec, 3 );
    attributes = FUNC0( rec, 8 );
    if (FUNC6( control_type, szScrollableText )) text = FUNC1( rec, 10 );

    FUNC2("%s, %s, %08x, %s, %08x\n", FUNC3(szCls), FUNC3(name),
          attributes, FUNC3(text), style);

    if( attributes & msidbControlAttributesVisible )
        style |= WS_VISIBLE;
    if( ~attributes & msidbControlAttributesEnabled )
        style |= WS_DISABLED;
    if( attributes & msidbControlAttributesSunken )
        exstyle |= WS_EX_CLIENTEDGE;

    FUNC5( dialog, name );

    return FUNC4( dialog, rec, exstyle, szCls, name, text, style, dialog->hwnd );
}