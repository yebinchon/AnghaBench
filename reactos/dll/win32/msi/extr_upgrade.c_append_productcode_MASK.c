#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_4__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ MSIPACKAGE ;
typedef  scalar_t__* LPWSTR ;
typedef  scalar_t__* LPCWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 scalar_t__* FUNC2 (int) ; 
 scalar_t__* FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,scalar_t__*) ; 
 int FUNC10 (scalar_t__*) ; 
 scalar_t__* szSemiColon ; 
 int /*<<< orphan*/  szSourceDir ; 

__attribute__((used)) static void FUNC11(MSIPACKAGE* package, LPCWSTR action_property,
                               LPCWSTR productid)
{
    LPWSTR prop;
    LPWSTR newprop;
    DWORD len;
    UINT r;

    prop = FUNC3(package->db, action_property );
    if (prop)
        len = FUNC10(prop);
    else
        len = 0;

    /*separator*/
    len ++;

    len += FUNC10(productid);

    /*null*/
    len++;

    newprop = FUNC2( len*sizeof(WCHAR) );

    if (prop)
    {
        FUNC9(newprop,prop);
        FUNC7(newprop,szSemiColon);
    }
    else
        newprop[0] = 0;
    FUNC7(newprop,productid);

    r = FUNC6( package->db, action_property, newprop, -1 );
    if (r == ERROR_SUCCESS && !FUNC8( action_property, szSourceDir ))
        FUNC5( package, TRUE );

    FUNC0("Found Related Product... %s now %s\n",
          FUNC1(action_property), FUNC1(newprop));

    FUNC4( prop );
    FUNC4( newprop );
}