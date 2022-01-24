#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_array_t ;
struct TYPE_3__ {char* payload; char* extra; char const** results; scalar_t__ success; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 size_t MAX_RESULT ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char**,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const**,char*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char const*,char*,scalar_t__) ; 
 TYPE_1__* testcase ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 size_t FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ *,size_t) ; 

int FUNC11 (void)
{
    for (size_t i = 0; i < FUNC0(testcase); ++i)
    {
        vlc_array_t out;
        const char *extra = NULL;
        int ret = FUNC4(&out, &extra, testcase[i].payload);
        if (testcase[i].success)
        {
            FUNC1(ret == VLC_SUCCESS);
            if (extra != NULL)
                FUNC1(FUNC5(extra, testcase[i].extra) == 0);
            else
                FUNC1(testcase[i].extra == NULL);

            const char *p = testcase[i].payload + 2;
            for (size_t j = 0; testcase[i].results[j] != NULL; ++j)
            {
                FUNC1(j < FUNC9(&out) && j < MAX_RESULT);
                char *res = FUNC10(&out, j);

                FUNC1(FUNC5(testcase[i].results[j], res) == 0);

                char *res_escaped = NULL;
                ret = FUNC3(&res_escaped, res);
                FUNC1(ret == VLC_SUCCESS && res_escaped != NULL);
                FUNC1(FUNC7(p, res_escaped, FUNC6(res_escaped)) == 0);
                p += FUNC6(res_escaped) + 2;

                FUNC2(res_escaped);
                FUNC2(res);
            }
            FUNC8(&out);
        }
        else
        {
            FUNC1(ret != VLC_SUCCESS);
        }
    }
    return 0;
}