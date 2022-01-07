
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int infoW ;
typedef char WCHAR ;
struct TYPE_3__ {int cbSize; int uMax; char const* lpszSubKey; int * lpfnCompare; int * hKey; scalar_t__ fFlags; } ;
typedef TYPE_1__ MRUINFOW ;
typedef void* HKEY ;
typedef void* HANDLE ;


 void* GetProcAddress (int ,char*) ;
 int HKEY_CURRENT_USER ;
 void* REG_TEST_KEYA ;
 int RegCloseKey (void*) ;
 int RegCreateKeyA (int ,void*,void**) ;
 int hComctl32 ;
 int ok (int,char*,void*) ;
 void* pCreateMRUListLazyW (TYPE_1__*,int ,int ,int ) ;
 int pFreeMRUList (void*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_CreateMRUListLazyW(void)
{
    static const WCHAR mrutestW[] = {'M','R','U','T','e','s','t',0};
    MRUINFOW infoW;
    void *named;
    HKEY hKey;
    HANDLE hMru;

    if (!pCreateMRUListLazyW)
    {
        win_skip("CreateMRUListLazyW entry point not found\n");
        return;
    }


    named = GetProcAddress(hComctl32, "CreateMRUListLazyW");
    ok(named == ((void*)0), "got %p\n", named);

    ok(!RegCreateKeyA(HKEY_CURRENT_USER, REG_TEST_KEYA, &hKey),
       "Couldn't create test key \"%s\"\n", REG_TEST_KEYA);

    infoW.cbSize = sizeof(infoW);
    infoW.uMax = 1;
    infoW.fFlags = 0;
    infoW.lpszSubKey = mrutestW;
    infoW.hKey = hKey;
    infoW.lpfnCompare = ((void*)0);

    hMru = pCreateMRUListLazyW(&infoW, 0, 0, 0);
    ok(hMru != ((void*)0), "got %p\n", hMru);
    pFreeMRUList(hMru);


    infoW.cbSize = sizeof(infoW) - 1;
    infoW.uMax = 1;
    infoW.fFlags = 0;
    infoW.lpszSubKey = mrutestW;
    infoW.hKey = hKey;
    infoW.lpfnCompare = ((void*)0);

    hMru = pCreateMRUListLazyW(&infoW, 0, 0, 0);
    ok(hMru != ((void*)0), "got %p\n", hMru);
    pFreeMRUList(hMru);


    infoW.cbSize = sizeof(infoW) + 1;
    infoW.uMax = 1;
    infoW.fFlags = 0;
    infoW.lpszSubKey = mrutestW;
    infoW.hKey = hKey;
    infoW.lpfnCompare = ((void*)0);

    hMru = pCreateMRUListLazyW(&infoW, 0, 0, 0);
    ok(hMru != ((void*)0), "got %p\n", hMru);
    pFreeMRUList(hMru);


    infoW.cbSize = 0;
    infoW.uMax = 1;
    infoW.fFlags = 0;
    infoW.lpszSubKey = mrutestW;
    infoW.hKey = hKey;
    infoW.lpfnCompare = ((void*)0);

    hMru = pCreateMRUListLazyW(&infoW, 0, 0, 0);
    ok(hMru != ((void*)0), "got %p\n", hMru);
    pFreeMRUList(hMru);


    infoW.cbSize = sizeof(infoW);
    infoW.uMax = 1;
    infoW.fFlags = 0;
    infoW.lpszSubKey = mrutestW;
    infoW.hKey = ((void*)0);
    infoW.lpfnCompare = ((void*)0);

    hMru = pCreateMRUListLazyW(&infoW, 0, 0, 0);
    ok(hMru == ((void*)0), "got %p\n", hMru);

    RegCloseKey(hKey);
}
