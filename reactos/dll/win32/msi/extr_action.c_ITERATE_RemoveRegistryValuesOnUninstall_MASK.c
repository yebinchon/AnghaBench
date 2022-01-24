#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int UINT ;
struct TYPE_15__ {scalar_t__ Action; } ;
struct TYPE_14__ {int /*<<< orphan*/  hdr; } ;
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
 scalar_t__ INSTALLSTATE_ABSENT ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 char* FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  REG_PROGRESS_VALUE ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC15 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 
 int FUNC20 (char*) ; 

__attribute__((used)) static UINT FUNC21( MSIRECORD *row, LPVOID param )
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

    FUNC16( package, 2, REG_PROGRESS_VALUE, 0, 0 );

    component = FUNC3( row, 6 );
    comp = FUNC15( package, component );
    if (!comp)
        return ERROR_SUCCESS;

    comp->Action = FUNC14( package, comp );
    if (comp->Action != INSTALLSTATE_ABSENT)
    {
        FUNC6("component not scheduled for removal %s\n", FUNC7(component));
        return ERROR_SUCCESS;
    }

    name = FUNC3( row, 4 );
    if (FUNC4( row, 5 ) && name )
    {
        if (name[0] == '+' && !name[1])
            return ERROR_SUCCESS;
        if ((name[0] == '-' || name[0] == '*') && !name[1])
        {
            delete_key = TRUE;
            name = NULL;
        }
    }

    root = FUNC2( row, 2 );
    key_str = FUNC3( row, 3 );

    root_key_str = FUNC11( package, root, &hkey_root );
    if (!root_key_str)
        return ERROR_SUCCESS;

    FUNC8( package, key_str, &deformated_key );
    size = FUNC20( deformated_key ) + FUNC20( root_key_str ) + 1;
    ui_key_str = FUNC12( size * sizeof(WCHAR) );
    FUNC19( ui_key_str, root_key_str );
    FUNC18( ui_key_str, deformated_key );

    FUNC8( package, name, &deformated_name );

    if (delete_key) FUNC9( comp, hkey_root, deformated_key );
    else FUNC10( comp, hkey_root, deformated_key, deformated_name );
    FUNC13( deformated_key );

    uirow = FUNC0( 2 );
    FUNC5( uirow, 1, ui_key_str );
    FUNC5( uirow, 2, deformated_name );
    FUNC1(package, INSTALLMESSAGE_ACTIONDATA, uirow);
    FUNC17( &uirow->hdr );

    FUNC13( ui_key_str );
    FUNC13( deformated_name );
    return ERROR_SUCCESS;
}