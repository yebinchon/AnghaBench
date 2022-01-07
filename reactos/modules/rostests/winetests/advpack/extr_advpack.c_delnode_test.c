
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ HANDLE ;
typedef char CHAR ;


 int ARRAY_SIZE (char*) ;
 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 int CreateDirectoryA (char*,int *) ;
 scalar_t__ CreateFileA (char*,int ,int ,int *,int ,int ,int *) ;
 scalar_t__ E_FAIL ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 int GetCurrentDirectoryA (int,char*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 scalar_t__ S_OK ;
 int assert (int) ;
 char* lstrcatA (char*,char*) ;
 int ok (int,char*) ;
 scalar_t__ pDelNode (char*,int ) ;

__attribute__((used)) static void delnode_test(void)
{
    HRESULT hr;
    HANDLE hn;
    CHAR currDir[MAX_PATH];
    UINT currDirLen;



    currDirLen = GetCurrentDirectoryA(ARRAY_SIZE(currDir), currDir);
    assert(currDirLen > 0 && currDirLen < ARRAY_SIZE(currDir));

    if(currDir[currDirLen - 1] == '\\')
        currDir[--currDirLen] = 0;


    hr = pDelNode(((void*)0), 0);
    ok (hr == E_FAIL, "DelNode called with NULL pathname should return E_FAIL\n");
    hr = pDelNode("", 0);
    ok (hr == E_FAIL, "DelNode called with empty pathname should return E_FAIL\n");


    hn = CreateFileA("DelNodeTestFile1", GENERIC_WRITE, 0, ((void*)0),
        CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    assert(hn != INVALID_HANDLE_VALUE);
    CloseHandle(hn);
    hr = pDelNode(lstrcatA(currDir, "\\DelNodeTestFile1"), 0);
    ok (hr == S_OK, "DelNode failed deleting a single file\n");
    currDir[currDirLen] = '\0';


    CreateDirectoryA("DelNodeTestDir", ((void*)0));
    hr = pDelNode(lstrcatA(currDir, "\\DelNodeTestDir"), 0);
    ok (hr == S_OK, "DelNode failed deleting an empty directory\n");
    currDir[currDirLen] = '\0';


    CreateDirectoryA("DelNodeTestDir", ((void*)0));
    hn = CreateFileA("DelNodeTestDir\\DelNodeTestFile1", GENERIC_WRITE, 0, ((void*)0),
        CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    assert(hn != INVALID_HANDLE_VALUE);
    CloseHandle(hn);
    hr = pDelNode(lstrcatA(currDir, "\\DelNodeTestDir"), 0);
    ok (hr == S_OK, "DelNode failed deleting a directory containing one file\n");
    currDir[currDirLen] = '\0';


    CreateDirectoryA("DelNodeTestDir", ((void*)0));
    hn = CreateFileA("DelNodeTestDir\\DelNodeTestFile1", GENERIC_WRITE, 0, ((void*)0),
        CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    assert(hn != INVALID_HANDLE_VALUE);
    CloseHandle(hn);
    hn = CreateFileA("DelNodeTestDir\\DelNodeTestFile2", GENERIC_WRITE, 0, ((void*)0),
        CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    assert(hn != INVALID_HANDLE_VALUE);
    CloseHandle(hn);
    hn = CreateFileA("DelNodeTestDir\\DelNodeTestFile3", GENERIC_WRITE, 0, ((void*)0),
        CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    assert(hn != INVALID_HANDLE_VALUE);
    CloseHandle(hn);
    hr = pDelNode(lstrcatA(currDir, "\\DelNodeTestDir"), 0);
    ok (hr == S_OK, "DelNode failed deleting a directory containing multiple files\n");
}
