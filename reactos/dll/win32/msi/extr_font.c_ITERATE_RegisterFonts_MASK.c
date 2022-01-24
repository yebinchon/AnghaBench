#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_18__ {scalar_t__ Action; int /*<<< orphan*/  Component; } ;
struct TYPE_17__ {int /*<<< orphan*/  TargetPath; TYPE_1__* Component; } ;
struct TYPE_16__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_15__ {int /*<<< orphan*/  Component; } ;
typedef  TYPE_2__ MSIRECORD ;
typedef  int /*<<< orphan*/  MSIPACKAGE ;
typedef  TYPE_3__ MSIFILE ;
typedef  TYPE_4__ MSICOMPONENT ;
typedef  scalar_t__ LPWSTR ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  INSTALLMESSAGE_ACTIONDATA ; 
 scalar_t__ INSTALLSTATE_LOCAL ; 
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_4__* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  regfont1 ; 
 int /*<<< orphan*/  regfont2 ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (scalar_t__,char) ; 

__attribute__((used)) static UINT FUNC20(MSIRECORD *row, LPVOID param)
{
    MSIPACKAGE *package = param;
    LPWSTR name;
    LPCWSTR filename;
    MSIFILE *file;
    MSICOMPONENT *comp;
    HKEY hkey1, hkey2;
    MSIRECORD *uirow;
    LPWSTR uipath, p;

    filename = FUNC2( row, 1 );
    file = FUNC15( package, filename );
    if (!file)
    {
        FUNC8("unable to find file %s\n", FUNC9(filename));
        return ERROR_SUCCESS;
    }
    comp = FUNC14( package, file->Component->Component );
    if (!comp)
    {
        FUNC8("unable to find component %s\n", FUNC9(file->Component->Component));
        return ERROR_SUCCESS;
    }
    comp->Action = FUNC13( package, comp );
    if (comp->Action != INSTALLSTATE_LOCAL)
    {
        FUNC7("component not scheduled for installation %s\n", FUNC9(comp->Component));
        return ERROR_SUCCESS;
    }

    FUNC6(HKEY_LOCAL_MACHINE,regfont1,&hkey1);
    FUNC6(HKEY_LOCAL_MACHINE,regfont2,&hkey2);

    if (FUNC3(row,2))
        name = FUNC10( file->TargetPath );
    else
        name = FUNC11(row,2);

    if (name)
    {
        FUNC16( hkey1, name, file->TargetPath);
        FUNC16( hkey2, name, file->TargetPath);
    }

    FUNC12(name);
    FUNC5(hkey1);
    FUNC5(hkey2);

    /* the UI chunk */
    uirow = FUNC0( 1 );
    uipath = FUNC18( file->TargetPath );
    p = FUNC19(uipath,'\\');
    if (p) p++;
    else p = uipath;
    FUNC4( uirow, 1, p );
    FUNC1(package, INSTALLMESSAGE_ACTIONDATA, uirow);
    FUNC17( &uirow->hdr );
    FUNC12( uipath );
    /* FIXME: call msi_ui_progress? */

    return ERROR_SUCCESS;
}