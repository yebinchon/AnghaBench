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
typedef  int /*<<< orphan*/  temp ;
struct TYPE_3__ {int major; int minor; int micro; int /*<<< orphan*/  pipe_in; } ;
typedef  TYPE_1__* PNegoHelper ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (char*,char*,int*,int*,int*) ; 

void FUNC6(PNegoHelper helper)
{
    char temp[80];
    char *newline;
    int major = 0, minor = 0, micro = 0, ret;

    FUNC1("Checking version of helper\n");
    if(helper != NULL)
    {
        int len = FUNC4(helper->pipe_in, temp, sizeof(temp)-1);
        if (len > 8)
        {
            if((newline = FUNC3(temp, '\n', len)) != NULL)
                *newline = '\0';
            else
                temp[len] = 0;

            FUNC1("Exact version is %s\n", FUNC2(temp));
            ret = FUNC5(temp, "Version %d.%d.%d", &major, &minor, &micro);
            if(ret != 3)
            {
                FUNC0("Failed to get the helper version.\n");
                helper->major = helper->minor = helper->micro = -1;
            }
            else
            {
                FUNC1("Version recognized: %d.%d.%d\n", major, minor, micro);
                helper->major = major;
                helper->minor = minor;
                helper->micro = micro;
            }
        }
    }
}