#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_11__ {scalar_t__ Action; } ;
struct TYPE_10__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIRECORD ;
typedef  int /*<<< orphan*/  MSIPACKAGE ;
typedef  int /*<<< orphan*/  MSIFOLDER ;
typedef  TYPE_2__ MSICOMPONENT ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  INSTALLMESSAGE_ACTIONDATA ; 
 scalar_t__ INSTALLSTATE_ABSENT ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC13( MSIRECORD *row, LPVOID param )
{
    MSIPACKAGE *package = param;
    LPCWSTR dir, component, full_path;
    MSIRECORD *uirow;
    MSIFOLDER *folder;
    MSICOMPONENT *comp;

    component = FUNC3(row, 2);
    if (!component)
        return ERROR_SUCCESS;

    comp = FUNC8(package, component);
    if (!comp)
        return ERROR_SUCCESS;

    comp->Action = FUNC7( package, comp );
    if (comp->Action != INSTALLSTATE_ABSENT)
    {
        FUNC5("component not scheduled for removal %s\n", FUNC6(component));
        return ERROR_SUCCESS;
    }

    dir = FUNC3( row, 1 );
    if (!dir)
    {
        FUNC0("Unable to get folder id\n");
        return ERROR_SUCCESS;
    }

    full_path = FUNC10( package, dir );
    if (!full_path)
    {
        FUNC0("Unable to resolve folder %s\n", FUNC6(dir));
        return ERROR_SUCCESS;
    }
    FUNC5("folder is %s\n", FUNC6(full_path));

    uirow = FUNC1( 1 );
    FUNC4( uirow, 1, dir );
    FUNC2(package, INSTALLMESSAGE_ACTIONDATA, uirow);
    FUNC11( &uirow->hdr );

    folder = FUNC9( package, dir );
    FUNC12( folder );
    return ERROR_SUCCESS;
}