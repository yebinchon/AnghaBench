#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {TYPE_7__* package; scalar_t__ default_font; int /*<<< orphan*/  attributes; int /*<<< orphan*/  hwnd; int /*<<< orphan*/  scale; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ msi_dialog ;
typedef  char WCHAR ;
struct TYPE_24__ {int /*<<< orphan*/  db; } ;
struct TYPE_23__ {TYPE_1__* lpCreateParams; } ;
struct TYPE_22__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_21__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef  TYPE_2__ RECT ;
typedef  TYPE_3__ MSIRECORD ;
typedef  int LRESULT ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  TYPE_4__* LPCREATESTRUCTW ;
typedef  int /*<<< orphan*/  LONG_PTR ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  GWLP_USERDATA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOREDRAW ; 
 int SWP_NOZORDER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_1__*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_7__*,TYPE_3__*,int) ; 
 TYPE_3__* FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (char const*) ; 

__attribute__((used)) static LRESULT FUNC19( HWND hwnd, LPCREATESTRUCTW cs )
{
    static const WCHAR df[] = {
        'D','e','f','a','u','l','t','U','I','F','o','n','t',0 };
    static const WCHAR dfv[] = {
        'M','S',' ','S','h','e','l','l',' ','D','l','g',0 };
    msi_dialog *dialog = cs->lpCreateParams;
    MSIRECORD *rec = NULL;
    LPWSTR title = NULL;
    RECT pos;

    FUNC5("%p %p\n", dialog, dialog->package);

    dialog->hwnd = hwnd;
    FUNC2( hwnd, GWLP_USERDATA, (LONG_PTR) dialog );

    rec = FUNC16( dialog );
    if( !rec )
    {
        FUNC5("No record found for dialog %s\n", FUNC6(dialog->name));
        return -1;
    }

    dialog->scale = FUNC11(dialog->hwnd);

    FUNC7( dialog, rec, &pos );

    dialog->attributes = FUNC0( rec, 6 );

    dialog->default_font = FUNC13( dialog->package->db, df );
    if (!dialog->default_font)
    {
        dialog->default_font = FUNC18(dfv);
        if (!dialog->default_font)
        {
            FUNC17( &rec->hdr );
            return -1;
        }
    }

    title = FUNC15( dialog->package, rec, 7 );
    FUNC4( hwnd, title );
    FUNC14( title );

    FUNC3( hwnd, 0, pos.left, pos.top,
                  pos.right - pos.left, pos.bottom - pos.top,
                  SWP_NOACTIVATE | SWP_NOZORDER | SWP_NOREDRAW );

    FUNC8( dialog );
    FUNC10( dialog );
    FUNC9( dialog );
    FUNC12( dialog, FUNC1( rec, 8 ) );
    FUNC17( &rec->hdr );

    return 0;
}