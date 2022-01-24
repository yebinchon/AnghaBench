#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  te ;
typedef  int /*<<< orphan*/  pe ;
typedef  int /*<<< orphan*/  me ;
struct TYPE_10__ {int dwSize; scalar_t__ th32ProcessID; int /*<<< orphan*/  szModule; int /*<<< orphan*/  szExePath; int /*<<< orphan*/  modBaseSize; int /*<<< orphan*/  modBaseAddr; } ;
struct TYPE_9__ {int dwSize; } ;
struct TYPE_8__ {int dwSize; } ;
typedef  TYPE_1__ THREADENTRY32 ;
typedef  TYPE_2__ PROCESSENTRY32 ;
typedef  TYPE_3__ MODULEENTRY32 ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (unsigned int*) ; 
 int /*<<< orphan*/  TH32CS_SNAPMODULE ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(DWORD pid, const char* expected[], unsigned num_expected)
{
    HANDLE              hSnapshot;
    PROCESSENTRY32      pe;
    THREADENTRY32       te;
    MODULEENTRY32       me;
    unsigned            found[32];
    unsigned            i;
    int                 num = 0;

    FUNC3(FUNC1(found) >= num_expected, "Internal: bump found[] size\n");

    hSnapshot = FUNC4( TH32CS_SNAPMODULE, pid );
    FUNC3(hSnapshot != NULL, "Cannot create snapshot\n");

    for (i = 0; i < num_expected; i++) found[i] = 0;
    me.dwSize = sizeof(me);
    if (FUNC5( hSnapshot, &me ))
    {
        do
        {
            FUNC9("PID=%x base=%p size=%x %s %s\n",
                  me.th32ProcessID, me.modBaseAddr, me.modBaseSize, me.szExePath, me.szModule);
            FUNC3(me.th32ProcessID == pid, "wrong returned process id\n");
            for (i = 0; i < num_expected; i++)
                if (!FUNC2(expected[i], me.szModule)) found[i]++;
            num++;
        } while (FUNC6( hSnapshot, &me ));
    }
    for (i = 0; i < num_expected; i++)
        FUNC3(found[i] == 1, "Module %s is %s\n",
           expected[i], found[i] ? "listed more than once" : "not listed");

    /* check that first really resets the enumeration */
    for (i = 0; i < num_expected; i++) found[i] = 0;
    me.dwSize = sizeof(me);
    if (FUNC5( hSnapshot, &me ))
    {
        do
        {
            FUNC9("PID=%x base=%p size=%x %s %s\n",
                  me.th32ProcessID, me.modBaseAddr, me.modBaseSize, me.szExePath, me.szModule);
            for (i = 0; i < num_expected; i++)
                if (!FUNC2(expected[i], me.szModule)) found[i]++;
            num--;
        } while (FUNC6( hSnapshot, &me ));
    }
    for (i = 0; i < num_expected; i++)
        FUNC3(found[i] == 1, "Module %s is %s\n",
           expected[i], found[i] ? "listed more than once" : "not listed");
    FUNC3(!num, "mismatch in counting\n");

    pe.dwSize = sizeof(pe);
    FUNC3(!FUNC7( hSnapshot, &pe ), "shouldn't return a process\n");

    te.dwSize = sizeof(te);
    FUNC3(!FUNC8( hSnapshot, &te ), "shouldn't return a thread\n");

    FUNC0(hSnapshot);
    FUNC3(!FUNC5( hSnapshot, &me ), "shouldn't return a module\n");
}