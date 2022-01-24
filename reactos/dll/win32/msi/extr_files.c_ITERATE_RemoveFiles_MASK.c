#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_22__ {int Attributes; TYPE_1__* assembly; int /*<<< orphan*/  Action; } ;
struct TYPE_21__ {int /*<<< orphan*/  db; } ;
struct TYPE_20__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_19__ {int /*<<< orphan*/  application; } ;
typedef  TYPE_2__ MSIRECORD ;
typedef  TYPE_3__ MSIPACKAGE ;
typedef  TYPE_4__ MSICOMPONENT ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  TYPE_3__* LPVOID ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  INSTALLMESSAGE_ACTIONDATA ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,TYPE_4__*) ; 
 TYPE_4__* FUNC18 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int msidbComponentAttributesPermanent ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static UINT FUNC23(MSIRECORD *row, LPVOID param)
{
    MSIPACKAGE *package = param;
    MSICOMPONENT *comp;
    MSIRECORD *uirow;
    LPCWSTR component, dirprop;
    UINT install_mode;
    LPWSTR dir = NULL, path = NULL, filename = NULL;
    DWORD size;
    UINT ret = ERROR_SUCCESS;

    component = FUNC4(row, 2);
    dirprop = FUNC4(row, 4);
    install_mode = FUNC3(row, 5);

    comp = FUNC18(package, component);
    if (!comp)
        return ERROR_SUCCESS;

    comp->Action = FUNC17( package, comp );
    if (!FUNC22(comp, install_mode))
    {
        FUNC8("Skipping removal due to install mode\n");
        return ERROR_SUCCESS;
    }
    if (comp->assembly && !comp->assembly->application)
    {
        return ERROR_SUCCESS;
    }
    if (comp->Attributes & msidbComponentAttributesPermanent)
    {
        FUNC8("permanent component, not removing file\n");
        return ERROR_SUCCESS;
    }

    dir = FUNC15(package->db, dirprop);
    if (!dir)
    {
        FUNC9("directory property has no value\n");
        return ERROR_SUCCESS;
    }
    size = 0;
    if ((filename = FUNC21( FUNC4(row, 3) )))
    {
        FUNC19( filename );
        size = FUNC13( filename );
    }
    size += FUNC13(dir) + 2;
    path = FUNC14(size * sizeof(WCHAR));
    if (!path)
    {
        ret = ERROR_OUTOFMEMORY;
        goto done;
    }

    if (filename)
    {
        FUNC12(path, dir);
        FUNC6(path);
        FUNC11(path, filename);

        FUNC8("Deleting misc file: %s\n", FUNC10(path));
        FUNC0(path);
    }
    else
    {
        FUNC8("Removing misc directory: %s\n", FUNC10(dir));
        FUNC7(dir);
    }

done:
    uirow = FUNC1( 9 );
    FUNC5( uirow, 1, FUNC4(row, 1) );
    FUNC5( uirow, 9, dir );
    FUNC2(package, INSTALLMESSAGE_ACTIONDATA, uirow);
    FUNC20( &uirow->hdr );

    FUNC16(filename);
    FUNC16(path);
    FUNC16(dir);
    return ret;
}