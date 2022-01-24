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
typedef  int /*<<< orphan*/  hviews ;
typedef  scalar_t__ UINT ;
typedef  int MSIHANDLE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int MY_NVIEWS ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    int i;
    MSIHANDLE hdb;
    MSIHANDLE hviews[MY_NVIEWS];
    UINT r;

    /* create an empty db */
    hdb = FUNC3();
    FUNC5( hdb, "failed to create db\n");

    FUNC4(hviews, 0, sizeof(hviews));

    for (i=0; i<MY_NVIEWS; i++) {
        static char szQueryBuf[256] = "SELECT * from `_Tables`";
        hviews[i] = 0xdeadbeeb;
        r = FUNC1(hdb, szQueryBuf, &hviews[i]);
        if( r != ERROR_SUCCESS || hviews[i] == 0xdeadbeeb || 
            hviews[i] == 0 || (i && (hviews[i] == hviews[i-1])))
            break;
    }

    FUNC5( i == MY_NVIEWS, "problem opening views\n");

    for (i=0; i<MY_NVIEWS; i++) {
        if (hviews[i] != 0 && hviews[i] != 0xdeadbeeb) {
            FUNC2(hviews[i]);
            r = FUNC0(hviews[i]);
            if (r != ERROR_SUCCESS)
                break;
        }
    }

    FUNC5( i == MY_NVIEWS, "problem closing views\n");

    r = FUNC0(hdb);
    FUNC5( r == ERROR_SUCCESS, "failed to close database\n");
}