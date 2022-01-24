#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ UINT ;
typedef  scalar_t__ MSIHANDLE ;
typedef  int /*<<< orphan*/  MSICOLINFO ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,char const*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static MSIHANDLE FUNC5(MSIHANDLE hdb, const char *query, MSICOLINFO type)
{
    MSIHANDLE hview = 0, rec = 0;
    UINT r;

    r = FUNC1(hdb, query, &hview);
    if( r != ERROR_SUCCESS )
        return r;

    r = FUNC3(hview, 0);
    if( r == ERROR_SUCCESS )
    {
        FUNC4( hview, type, &rec );
    }
    FUNC2(hview);
    FUNC0(hview);
    return rec;
}