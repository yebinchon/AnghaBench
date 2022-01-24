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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int UINT ;
struct TYPE_4__ {int /*<<< orphan*/  tempfolder; } ;
typedef  TYPE_1__ MSIDATABASE ;

/* Variables and functions */
 scalar_t__ FILE_ATTRIBUTE_DIRECTORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  szMsi ; 
 int /*<<< orphan*/  szTempFolder ; 

WCHAR *FUNC8( MSIDATABASE *db )
{
    WCHAR *ret;

    if (!db->tempfolder)
    {
        WCHAR tmp[MAX_PATH];
        UINT len = sizeof(tmp)/sizeof(tmp[0]);

        if (FUNC5( db, szTempFolder, tmp, &len ) ||
            FUNC0( tmp ) != FILE_ATTRIBUTE_DIRECTORY)
        {
            FUNC2( MAX_PATH, tmp );
        }
        if (!(db->tempfolder = FUNC6( tmp ))) return NULL;
    }

    if ((ret = FUNC3( (FUNC7( db->tempfolder ) + 20) * sizeof(WCHAR) )))
    {
        if (!FUNC1( db->tempfolder, szMsi, 0, ret ))
        {
            FUNC4( ret );
            return NULL;
        }
    }

    return ret;
}