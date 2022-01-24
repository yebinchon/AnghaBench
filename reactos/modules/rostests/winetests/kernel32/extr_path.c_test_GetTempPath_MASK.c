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
typedef  int /*<<< orphan*/  windir ;
typedef  int /*<<< orphan*/  save_TMP ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

__attribute__((used)) static void FUNC12(void)
{
    char save_TMP[MAX_PATH];
    char windir[MAX_PATH];
    char buf[MAX_PATH];
    WCHAR curdir[MAX_PATH];

    if (!FUNC1("TMP", save_TMP, sizeof(save_TMP))) save_TMP[0] = 0;

    /* test default configuration */
    FUNC11("TMP=%s\n", save_TMP);
    if (save_TMP[0])
    {
        FUNC7(buf,save_TMP);
        if (buf[FUNC8(buf)-1]!='\\')
            FUNC6(buf,"\\");
        FUNC9(buf);
        FUNC10(buf);
    }

    /* TMP=C:\WINDOWS */
    FUNC2(windir, sizeof(windir));
    FUNC5("TMP", windir);
    FUNC1("TMP", buf, sizeof(buf));
    FUNC11("TMP=%s\n", buf);
    FUNC6(windir,"\\");
    FUNC9(windir);
    FUNC10(windir);

    /* TMP=C:\ */
    FUNC2(windir, sizeof(windir));
    windir[3] = 0;
    FUNC5("TMP", windir);
    FUNC1("TMP", buf, sizeof(buf));
    FUNC11("TMP=%s\n", buf);
    FUNC9(windir);
    FUNC10(windir);

    FUNC0(MAX_PATH, curdir);
    /* TMP=C: i.e. use current working directory of the specified drive */
    FUNC2(windir, sizeof(windir));
    FUNC3(windir);
    windir[2] = 0;
    FUNC5("TMP", windir);
    FUNC1("TMP", buf, sizeof(buf));
    FUNC11("TMP=%s\n", buf);
    FUNC2(windir, sizeof(windir));
    FUNC6(windir,"\\");
    FUNC9(windir);
    FUNC10(windir);

    FUNC5("TMP", save_TMP);
    FUNC4(curdir);
}