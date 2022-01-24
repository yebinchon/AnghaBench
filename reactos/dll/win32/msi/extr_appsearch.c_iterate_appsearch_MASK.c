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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_14__ {int /*<<< orphan*/  db; } ;
struct TYPE_13__ {int /*<<< orphan*/  hdr; } ;
typedef  int /*<<< orphan*/  MSISIGNATURE ;
typedef  TYPE_1__ MSIRECORD ;
typedef  TYPE_2__ MSIPACKAGE ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  TYPE_2__* LPVOID ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  INSTALLMESSAGE_ACTIONDATA ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  szSourceDir ; 

__attribute__((used)) static UINT FUNC13(MSIRECORD *row, LPVOID param)
{
    MSIPACKAGE *package = param;
    LPCWSTR propName, sigName;
    LPWSTR value = NULL;
    MSISIGNATURE sig;
    MSIRECORD *uirow;
    UINT r;

    /* get property and signature */
    propName = FUNC4(row, 1);
    sigName = FUNC4(row, 2);

    FUNC6("%s %s\n", FUNC7(propName), FUNC7(sigName));

    r = FUNC0(package, sigName, &sig, &value);
    if (value)
    {
        r = FUNC10( package->db, propName, value, -1 );
        if (r == ERROR_SUCCESS && !FUNC12( propName, szSourceDir ))
            FUNC9( package, TRUE );

        FUNC8(value);
    }
    FUNC1(&sig);

    uirow = FUNC2( 2 );
    FUNC5( uirow, 1, propName );
    FUNC5( uirow, 2, sigName );
    FUNC3(package, INSTALLMESSAGE_ACTIONDATA, uirow);
    FUNC11( &uirow->hdr );

    return r;
}