
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int te ;
typedef int pe ;
typedef int me ;
struct TYPE_10__ {int dwSize; scalar_t__ th32ProcessID; int szModule; int szExePath; int modBaseSize; int modBaseAddr; } ;
struct TYPE_9__ {int dwSize; } ;
struct TYPE_8__ {int dwSize; } ;
typedef TYPE_1__ THREADENTRY32 ;
typedef TYPE_2__ PROCESSENTRY32 ;
typedef TYPE_3__ MODULEENTRY32 ;
typedef int * HANDLE ;
typedef scalar_t__ DWORD ;


 int CloseHandle (int *) ;
 unsigned int NUM_OF (unsigned int*) ;
 int TH32CS_SNAPMODULE ;
 int lstrcmpiA (char const*,int ) ;
 int ok (int,char*,...) ;
 int * pCreateToolhelp32Snapshot (int ,scalar_t__) ;
 scalar_t__ pModule32First (int *,TYPE_3__*) ;
 scalar_t__ pModule32Next (int *,TYPE_3__*) ;
 int pProcess32First (int *,TYPE_2__*) ;
 int pThread32First (int *,TYPE_1__*) ;
 int trace (char*,scalar_t__,int ,int ,int ,int ) ;

__attribute__((used)) static void test_module(DWORD pid, const char* expected[], unsigned num_expected)
{
    HANDLE hSnapshot;
    PROCESSENTRY32 pe;
    THREADENTRY32 te;
    MODULEENTRY32 me;
    unsigned found[32];
    unsigned i;
    int num = 0;

    ok(NUM_OF(found) >= num_expected, "Internal: bump found[] size\n");

    hSnapshot = pCreateToolhelp32Snapshot( TH32CS_SNAPMODULE, pid );
    ok(hSnapshot != ((void*)0), "Cannot create snapshot\n");

    for (i = 0; i < num_expected; i++) found[i] = 0;
    me.dwSize = sizeof(me);
    if (pModule32First( hSnapshot, &me ))
    {
        do
        {
            trace("PID=%x base=%p size=%x %s %s\n",
                  me.th32ProcessID, me.modBaseAddr, me.modBaseSize, me.szExePath, me.szModule);
            ok(me.th32ProcessID == pid, "wrong returned process id\n");
            for (i = 0; i < num_expected; i++)
                if (!lstrcmpiA(expected[i], me.szModule)) found[i]++;
            num++;
        } while (pModule32Next( hSnapshot, &me ));
    }
    for (i = 0; i < num_expected; i++)
        ok(found[i] == 1, "Module %s is %s\n",
           expected[i], found[i] ? "listed more than once" : "not listed");


    for (i = 0; i < num_expected; i++) found[i] = 0;
    me.dwSize = sizeof(me);
    if (pModule32First( hSnapshot, &me ))
    {
        do
        {
            trace("PID=%x base=%p size=%x %s %s\n",
                  me.th32ProcessID, me.modBaseAddr, me.modBaseSize, me.szExePath, me.szModule);
            for (i = 0; i < num_expected; i++)
                if (!lstrcmpiA(expected[i], me.szModule)) found[i]++;
            num--;
        } while (pModule32Next( hSnapshot, &me ));
    }
    for (i = 0; i < num_expected; i++)
        ok(found[i] == 1, "Module %s is %s\n",
           expected[i], found[i] ? "listed more than once" : "not listed");
    ok(!num, "mismatch in counting\n");

    pe.dwSize = sizeof(pe);
    ok(!pProcess32First( hSnapshot, &pe ), "shouldn't return a process\n");

    te.dwSize = sizeof(te);
    ok(!pThread32First( hSnapshot, &te ), "shouldn't return a thread\n");

    CloseHandle(hSnapshot);
    ok(!pModule32First( hSnapshot, &me ), "shouldn't return a module\n");
}
