
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int temp_path ;
typedef int info2 ;
typedef int info1 ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {char* pFrom; int fFlags; int * lpszProgressTitle; int * hNameMappings; int * pTo; int wFunc; int * hwnd; } ;
struct TYPE_5__ {int member_0; int member_1; int member_2; int i64Size; int i64NumItems; } ;
typedef TYPE_1__ SHQUERYRBINFO ;
typedef TYPE_2__ SHFILEOPSTRUCTA ;
typedef char* HRESULT ;
typedef scalar_t__ HANDLE ;
typedef char CHAR ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char*,int ,int ,int *,int ,int ,int *) ;
 int FOF_ALLOWUNDO ;
 int FOF_FILESONLY ;
 int FOF_NOCONFIRMATION ;
 int FOF_SILENT ;
 int FO_DELETE ;
 int GENERIC_WRITE ;
 int GetTempFileNameA (char*,char*,int ,char*) ;
 int GetTempPathA (int,char*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 char* S_OK ;
 int WriteFile (scalar_t__,char*,int,scalar_t__*,int *) ;
 int ok (int,char*,...) ;
 int pSHFileOperationA (TYPE_2__*) ;
 char* pSHQueryRecycleBinA (char*,TYPE_1__*) ;
 int skip (char*) ;
 int strlen (char*) ;
 char* wine_dbgstr_longlong (int) ;

__attribute__((used)) static void test_query_recyclebin(void)
{
    SHQUERYRBINFO info1={sizeof(info1),0xdeadbeef,0xdeadbeef};
    SHQUERYRBINFO info2={sizeof(info2),0xdeadbeef,0xdeadbeef};
    UINT written;
    HRESULT hr;
    HANDLE file;
    SHFILEOPSTRUCTA shfo;
    CHAR temp_path[MAX_PATH-14], buf[MAX_PATH+1];
    if(!pSHQueryRecycleBinA)
    {
        skip("SHQueryRecycleBinA does not exist\n");
        return;
    }
    if(!pSHFileOperationA)
    {
        skip("SHFileOperationA does not exist\n");
        return;
    }
    ok(GetTempPathA(sizeof(temp_path), temp_path), "GetTempPath failed\n");
    ok(GetTempFileNameA(temp_path, "trash", 0, buf), "GetTempFileName failed\n");
    buf[strlen(buf) + 1] = '\0';
    hr = pSHQueryRecycleBinA(buf,&info1);
    ok(hr == S_OK, "SHQueryRecycleBinA failed with error 0x%x\n", hr);
    ok(info1.i64Size!=0xdeadbeef,"i64Size not set\n");
    ok(info1.i64NumItems!=0xdeadbeef,"i64NumItems not set\n");

    file = CreateFileA(buf,GENERIC_WRITE,0,((void*)0),CREATE_ALWAYS,0,((void*)0));
    ok(file != INVALID_HANDLE_VALUE, "Failure to open file %s\n",buf);
    WriteFile(file,buf,strlen(buf),&written,((void*)0));
    CloseHandle(file);
    shfo.hwnd = ((void*)0);
    shfo.wFunc = FO_DELETE;
    shfo.pFrom = buf;
    shfo.pTo = ((void*)0);
    shfo.fFlags = FOF_FILESONLY | FOF_NOCONFIRMATION | FOF_SILENT | FOF_ALLOWUNDO;
    shfo.hNameMappings = ((void*)0);
    shfo.lpszProgressTitle = ((void*)0);
    ok(!pSHFileOperationA(&shfo), "Deletion was not successful\n");
    hr = pSHQueryRecycleBinA(buf,&info2);
    ok(hr == S_OK, "SHQueryRecycleBinA failed with error 0x%x\n", hr);
    ok(info2.i64Size==info1.i64Size+written,"Expected recycle bin to have 0x%s bytes\n",wine_dbgstr_longlong(info1.i64Size+written));
    ok(info2.i64NumItems==info1.i64NumItems+1,"Expected recycle bin to have 0x%s items\n",wine_dbgstr_longlong(info1.i64NumItems+1));
}
