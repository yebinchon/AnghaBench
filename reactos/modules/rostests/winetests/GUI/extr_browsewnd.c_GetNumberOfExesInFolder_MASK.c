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
struct TYPE_4__ {int dwFileAttributes; } ;
typedef  TYPE_1__ WIN32_FIND_DATAW ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  scalar_t__ INT ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 

__attribute__((used)) static INT
FUNC4(LPWSTR lpFolder)
{
    HANDLE hFind;
    WIN32_FIND_DATAW findFileData;
    INT numFiles = 0;

    hFind = FUNC1(lpFolder,
                           &findFileData);
    if (hFind == INVALID_HANDLE_VALUE)
    {
        FUNC0(FUNC3());
        return 0;
    }

    do
    {
        if (!(findFileData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY))
        {
            numFiles++;
        }
    } while (FUNC2(hFind, &findFileData) != 0);

    return numFiles;
}