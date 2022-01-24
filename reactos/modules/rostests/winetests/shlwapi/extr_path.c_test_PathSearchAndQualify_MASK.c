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
typedef  char WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    WCHAR path1[] = {'c',':','\\','f','o','o',0};
    WCHAR expect1[] = {'c',':','\\','f','o','o',0};
    WCHAR path2[] = {'c',':','f','o','o',0};
    WCHAR c_drive[] = {'c',':',0}; 
    WCHAR foo[] = {'f','o','o',0}; 
    WCHAR path3[] = {'\\','f','o','o',0};
    WCHAR winini[] = {'w','i','n','.','i','n','i',0};
    WCHAR out[MAX_PATH];
    WCHAR cur_dir[MAX_PATH];
    WCHAR dot[] = {'.',0};

    /* c:\foo */
    FUNC7(FUNC2(path1, out, MAX_PATH) != 0,
       "PathSearchAndQualify rets 0\n");
    FUNC7(!FUNC5(out, expect1), "strings don't match\n");

    /* c:foo */
    FUNC7(FUNC2(path2, out, MAX_PATH) != 0,
       "PathSearchAndQualify rets 0\n");
    FUNC0(c_drive, MAX_PATH, cur_dir, NULL);
    FUNC1(cur_dir);
    FUNC4(cur_dir, foo);
    FUNC7(!FUNC5(out, cur_dir), "strings don't match\n");    

    /* foo */
    FUNC7(FUNC2(foo, out, MAX_PATH) != 0,
       "PathSearchAndQualify rets 0\n");
    FUNC0(dot, MAX_PATH, cur_dir, NULL);
    FUNC1(cur_dir);
    FUNC4(cur_dir, foo);
    FUNC7(!FUNC5(out, cur_dir), "strings don't match\n");    

    /* \foo */
    FUNC7(FUNC2(path3, out, MAX_PATH) != 0,
       "PathSearchAndQualify rets 0\n");
    FUNC0(dot, MAX_PATH, cur_dir, NULL);
    FUNC6(cur_dir + 2, path3);
    FUNC7(!FUNC5(out, cur_dir), "strings don't match\n");

    /* win.ini */
    FUNC7(FUNC2(winini, out, MAX_PATH) != 0,
       "PathSearchAndQualify rets 0\n");
    if(!FUNC3(NULL, winini, NULL, MAX_PATH, cur_dir, NULL))
        FUNC0(winini, MAX_PATH, cur_dir, NULL);
    FUNC7(!FUNC5(out, cur_dir), "strings don't match\n");

}