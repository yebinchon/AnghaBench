#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  temp_path ;
typedef  int /*<<< orphan*/  info2 ;
typedef  int /*<<< orphan*/  info1 ;
typedef  scalar_t__ UINT ;
struct TYPE_6__ {char* pFrom; int fFlags; int /*<<< orphan*/ * lpszProgressTitle; int /*<<< orphan*/ * hNameMappings; int /*<<< orphan*/ * pTo; int /*<<< orphan*/  wFunc; int /*<<< orphan*/ * hwnd; } ;
struct TYPE_5__ {int member_0; int member_1; int member_2; int i64Size; int i64NumItems; } ;
typedef  TYPE_1__ SHQUERYRBINFO ;
typedef  TYPE_2__ SHFILEOPSTRUCTA ;
typedef  char* HRESULT ;
typedef  scalar_t__ HANDLE ;
typedef  char CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FOF_ALLOWUNDO ; 
 int FOF_FILESONLY ; 
 int FOF_NOCONFIRMATION ; 
 int FOF_SILENT ; 
 int /*<<< orphan*/  FO_DELETE ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  MAX_PATH ; 
 char* S_OK ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 char* FUNC7 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (char*) ; 
 char* FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(void)
{
    SHQUERYRBINFO info1={sizeof(info1),0xdeadbeef,0xdeadbeef};
    SHQUERYRBINFO info2={sizeof(info2),0xdeadbeef,0xdeadbeef};
    UINT written;
    HRESULT hr;
    HANDLE file;
    SHFILEOPSTRUCTA shfo;
    CHAR temp_path[MAX_PATH-14], buf[MAX_PATH+1];
    if(!&pSHQueryRecycleBinA)
    {
        FUNC8("SHQueryRecycleBinA does not exist\n");
        return;
    }
    if(!&pSHFileOperationA)
    {
        FUNC8("SHFileOperationA does not exist\n");
        return;
    }
    FUNC5(FUNC3(sizeof(temp_path), temp_path), "GetTempPath failed\n");
    FUNC5(FUNC2(temp_path, "trash", 0, buf), "GetTempFileName failed\n");
    buf[FUNC9(buf) + 1] = '\0';
    hr = FUNC7(buf,&info1);
    FUNC5(hr == S_OK, "SHQueryRecycleBinA failed with error 0x%x\n", hr);
    FUNC5(info1.i64Size!=0xdeadbeef,"i64Size not set\n");
    FUNC5(info1.i64NumItems!=0xdeadbeef,"i64NumItems not set\n");
    /*create and send a file to the recycle bin*/
    file = FUNC1(buf,GENERIC_WRITE,0,NULL,CREATE_ALWAYS,0,NULL);
    FUNC5(file != INVALID_HANDLE_VALUE, "Failure to open file %s\n",buf);
    FUNC4(file,buf,FUNC9(buf),&written,NULL);
    FUNC0(file);
    shfo.hwnd = NULL;
    shfo.wFunc = FO_DELETE;
    shfo.pFrom = buf;
    shfo.pTo = NULL;
    shfo.fFlags = FOF_FILESONLY | FOF_NOCONFIRMATION | FOF_SILENT | FOF_ALLOWUNDO;
    shfo.hNameMappings = NULL;
    shfo.lpszProgressTitle = NULL;
    FUNC5(!FUNC6(&shfo), "Deletion was not successful\n");
    hr = FUNC7(buf,&info2);
    FUNC5(hr == S_OK, "SHQueryRecycleBinA failed with error 0x%x\n", hr);
    FUNC5(info2.i64Size==info1.i64Size+written,"Expected recycle bin to have 0x%s bytes\n",FUNC10(info1.i64Size+written));
    FUNC5(info2.i64NumItems==info1.i64NumItems+1,"Expected recycle bin to have 0x%s items\n",FUNC10(info1.i64NumItems+1));
}