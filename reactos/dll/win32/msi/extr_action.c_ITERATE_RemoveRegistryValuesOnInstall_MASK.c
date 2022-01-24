#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int UINT ;
struct TYPE_14__ {scalar_t__ Action; } ;
struct TYPE_13__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIRECORD ;
typedef  int /*<<< orphan*/  MSIPACKAGE ;
typedef  TYPE_2__ MSICOMPONENT ;
typedef  char* LPWSTR ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  char* LPCWSTR ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  INSTALLMESSAGE_ACTIONDATA ; 
 scalar_t__ INSTALLSTATE_LOCAL ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 char* FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 int FUNC18 (char*) ; 

__attribute__((used)) static UINT FUNC19( MSIRECORD *row, LPVOID param )
{
    MSIPACKAGE *package = param;
    LPCWSTR component, name, key_str, root_key_str;
    LPWSTR deformated_key, deformated_name, ui_key_str;
    MSICOMPONENT *comp;
    MSIRECORD *uirow;
    BOOL delete_key = FALSE;
    HKEY hkey_root;
    UINT size;
    INT root;

    component = FUNC3( row, 5 );
    comp = FUNC14( package, component );
    if (!comp)
        return ERROR_SUCCESS;

    comp->Action = FUNC13( package, comp );
    if (comp->Action != INSTALLSTATE_LOCAL)
    {
        FUNC5("component not scheduled for installation %s\n", FUNC6(component));
        return ERROR_SUCCESS;
    }

    if ((name = FUNC3( row, 4 )))
    {
        if (name[0] == '-' && !name[1])
        {
            delete_key = TRUE;
            name = NULL;
        }
    }

    root = FUNC2( row, 2 );
    key_str = FUNC3( row, 3 );

    root_key_str = FUNC10( package, root, &hkey_root );
    if (!root_key_str)
        return ERROR_SUCCESS;

    FUNC7( package, key_str, &deformated_key );
    size = FUNC18( deformated_key ) + FUNC18( root_key_str ) + 1;
    ui_key_str = FUNC11( size * sizeof(WCHAR) );
    FUNC17( ui_key_str, root_key_str );
    FUNC16( ui_key_str, deformated_key );

    FUNC7( package, name, &deformated_name );

    if (delete_key) FUNC8( comp, hkey_root, deformated_key );
    else FUNC9( comp, hkey_root, deformated_key, deformated_name );
    FUNC12( deformated_key );

    uirow = FUNC0( 2 );
    FUNC4( uirow, 1, ui_key_str );
    FUNC4( uirow, 2, deformated_name );
    FUNC1(package, INSTALLMESSAGE_ACTIONDATA, uirow);
    FUNC15( &uirow->hdr );

    FUNC12( ui_key_str );
    FUNC12( deformated_name );
    return ERROR_SUCCESS;
}