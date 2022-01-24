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

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int MAX_PATH ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*,char const*,char*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(int folder, const char *envVar)
{
    char path[MAX_PATH];

    if (!&pSHGetSpecialFolderPathA) return;

    if (FUNC3(NULL, path, folder, FALSE))
    {
        char *envVal = FUNC0(envVar);

        FUNC2(!envVal || !FUNC1(envVal, path),
         "%%%s%% does not match SHGetSpecialFolderPath:\n"
         "%%%s%% is %s\nSHGetSpecialFolderPath returns %s\n",
         envVar, envVar, envVal, path);
    }
}