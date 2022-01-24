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
typedef  int /*<<< orphan*/  ftp_session_t ;
typedef  int /*<<< orphan*/ * LPFILEPROPERTIESW ;
typedef  int* LPDWORD ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int INT ;
typedef  int /*<<< orphan*/  FILEPROPERTIESW ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_NO_MORE_FILES ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static BOOL FUNC7(ftp_session_t *lpwfs, INT nSocket, LPCWSTR lpszSearchFile,
    LPFILEPROPERTIESW *lpafp, LPDWORD dwfp)
{
    BOOL bSuccess = TRUE;
    INT sizeFilePropArray = 500;/*20; */
    INT indexFilePropArray = -1;

    FUNC2("\n");

    /* Allocate initial file properties array */
    *lpafp = FUNC3(sizeof(FILEPROPERTIESW)*(sizeFilePropArray));
    if (!*lpafp)
        return FALSE;

    do {
        if (indexFilePropArray+1 >= sizeFilePropArray)
        {
            LPFILEPROPERTIESW tmpafp;
            
            sizeFilePropArray *= 2;
            tmpafp = FUNC6(*lpafp, sizeof(FILEPROPERTIESW)*sizeFilePropArray);
            if (NULL == tmpafp)
            {
                bSuccess = FALSE;
                break;
            }

            *lpafp = tmpafp;
        }
        indexFilePropArray++;
    } while (FUNC0(nSocket, lpszSearchFile, &(*lpafp)[indexFilePropArray]));

    if (bSuccess && indexFilePropArray)
    {
        if (indexFilePropArray < sizeFilePropArray - 1)
        {
            LPFILEPROPERTIESW tmpafp;

            tmpafp = FUNC5(*lpafp, sizeof(FILEPROPERTIESW)*indexFilePropArray);
            if (NULL != tmpafp)
                *lpafp = tmpafp;
        }
        *dwfp = indexFilePropArray;
    }
    else
    {
        FUNC4(*lpafp);
        FUNC1(ERROR_NO_MORE_FILES);
        bSuccess = FALSE;
    }

    return bSuccess;
}