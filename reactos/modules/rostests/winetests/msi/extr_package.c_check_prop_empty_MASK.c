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
typedef  int /*<<< orphan*/  MSIHANDLE ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static BOOL FUNC2( MSIHANDLE hpkg, const char * prop)
{
    UINT r;
    DWORD sz;
    char buffer[2];

    sz = sizeof buffer;
    FUNC1(buffer,"x");
    r = FUNC0( hpkg, prop, buffer, &sz );
    return r == ERROR_SUCCESS && buffer[0] == 0 && sz == 0;
}