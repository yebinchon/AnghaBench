
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int returnedstringw ;
typedef char WCHAR ;
typedef int HINSTANCE ;


 int CP_ACP ;
 int ERROR_CALL_NOT_IMPLEMENTED ;
 int GetLastError () ;
 int GetModuleHandleA (int *) ;
 int LoadStringW (int ,int,char*,int) ;
 int SetLastError (int) ;
 int WideCharToMultiByte (int ,int ,char*,int,char*,int,int *,int *) ;
 int memcmp (char*,char*,int) ;
 int memcpy (char*,char*,int) ;
 int ok (int,char*,...) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_LoadStringW(void)
{
    HINSTANCE hInst = GetModuleHandleA(((void*)0));
    WCHAR copiedstringw[128], returnedstringw[128], *resourcepointer = ((void*)0);
    char copiedstring[128], returnedstring[128];
    int length1, length2, retvalue;



    SetLastError(0xdeadbeef);
    length1 = LoadStringW(hInst, 2, (WCHAR *) &resourcepointer, 0);
    if (!length1)
    {
        if (GetLastError() == ERROR_CALL_NOT_IMPLEMENTED)
            win_skip( "LoadStringW not implemented\n" );
        else
            win_skip( "LoadStringW does not return a pointer to the resource\n" );
        return;
    }
    length2 = LoadStringW(hInst, 2, returnedstringw, sizeof(returnedstringw) /sizeof(WCHAR));
    ok(length2 > 0, "LoadStringW failed to load resource 2, ret %d, err %d\n", length2, GetLastError());
    ok(length1 == length2, "LoadStringW returned different values dependent on buflen. ret1 %d, ret2 %d\n",
        length1, length2);
    ok(length1 > 0 && resourcepointer != ((void*)0), "LoadStringW failed to get pointer to resource 2, ret %d, err %d\n",
        length1, GetLastError());


    if(resourcepointer != ((void*)0))
    {
        memcpy(copiedstringw, resourcepointer, length1 * sizeof(WCHAR));
        copiedstringw[length1] = '\0';

        WideCharToMultiByte( CP_ACP, 0, returnedstringw, -1, returnedstring, 128, ((void*)0), ((void*)0) );
        WideCharToMultiByte( CP_ACP, 0, copiedstringw, -1, copiedstring, 128, ((void*)0), ((void*)0) );
        ok(!memcmp(copiedstringw, returnedstringw, (length2 + 1)*sizeof(WCHAR)),
           "strings don't match: returnedstring = %s, copiedstring = %s\n", returnedstring, copiedstring);
    }


    retvalue = LoadStringW(hInst, 2, ((void*)0), 0);
    ok(!retvalue, "LoadStringW returned a non-zero value when called with buffer = NULL, retvalue = %d\n", retvalue);

    retvalue = LoadStringW(hInst, 2, ((void*)0), 128);
    ok(!retvalue, "LoadStringW returned a non-zero value when called with buffer = NULL, retvalue = %d\n", retvalue);
}
