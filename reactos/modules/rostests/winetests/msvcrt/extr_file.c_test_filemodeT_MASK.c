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
typedef  int /*<<< orphan*/  WIN32_FIND_DATAA ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  DATA2 ;
typedef  int /*<<< orphan*/  DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 size_t FUNC6 (char*,int,int,int /*<<< orphan*/ *) ; 
 size_t FUNC7 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(void)
{
    char DATA  [] = {26, 't', 'e', 's' ,'t'};
    char DATA2 [100];
    char temppath[MAX_PATH];
    char tempfile[MAX_PATH];
    FILE* f;
    size_t bytesWritten;
    size_t bytesRead;
    WIN32_FIND_DATAA findData;
    HANDLE h;

    FUNC3(MAX_PATH, temppath);
    FUNC2(temppath, "", 0, tempfile);

    f = FUNC5(tempfile, "w+bDT");
    bytesWritten = FUNC7(DATA, 1, sizeof(DATA), f);
    FUNC9(f);
    bytesRead = FUNC6(DATA2, 1, sizeof(DATA2), f);
    FUNC4(f);

    FUNC8 (bytesRead == bytesWritten && bytesRead == sizeof(DATA),
        "fopen file mode 'T' wrongly interpreted as 't'\n" );

    h = FUNC1(tempfile, &findData);

    FUNC8 (h == INVALID_HANDLE_VALUE, "file wasn't deleted when closed.\n" );

    if (h != INVALID_HANDLE_VALUE) FUNC0(h);
}