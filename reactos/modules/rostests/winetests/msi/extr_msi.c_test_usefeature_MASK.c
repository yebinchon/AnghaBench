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
typedef  scalar_t__ INSTALLSTATE ;

/* Variables and functions */
 scalar_t__ INSTALLSTATE_INVALIDARG ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    INSTALLSTATE r;

    if (!&pMsiUseFeatureExA)
    {
        FUNC3("MsiUseFeatureExA not implemented\n");
        return;
    }

    r = FUNC0(NULL, NULL);
    FUNC1( r == INSTALLSTATE_INVALIDARG, "wrong return val\n");

    r = FUNC0("{9085040-6000-11d3-8cfe-0150048383c9}" ,NULL);
    FUNC1( r == INSTALLSTATE_INVALIDARG, "wrong return val\n");

    r = FUNC2(NULL,NULL,0,0);
    FUNC1( r == INSTALLSTATE_INVALIDARG, "wrong return val\n");

    r = FUNC2(NULL, "WORDVIEWFiles", -2, 1 );
    FUNC1( r == INSTALLSTATE_INVALIDARG, "wrong return val\n");

    r = FUNC2("{90850409-6000-11d3-8cfe-0150048383c9}", 
                         NULL, -2, 0 );
    FUNC1( r == INSTALLSTATE_INVALIDARG, "wrong return val\n");

    r = FUNC2("{9085040-6000-11d3-8cfe-0150048383c9}", 
                         "WORDVIEWFiles", -2, 0 );
    FUNC1( r == INSTALLSTATE_INVALIDARG, "wrong return val\n");

    r = FUNC2("{0085040-6000-11d3-8cfe-0150048383c9}", 
                         "WORDVIEWFiles", -2, 0 );
    FUNC1( r == INSTALLSTATE_INVALIDARG, "wrong return val\n");

    r = FUNC2("{90850409-6000-11d3-8cfe-0150048383c9}", 
                         "WORDVIEWFiles", -2, 1 );
    FUNC1( r == INSTALLSTATE_INVALIDARG, "wrong return val\n");
}