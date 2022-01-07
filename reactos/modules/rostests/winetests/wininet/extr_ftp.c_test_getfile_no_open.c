
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_INTERNET_NOT_INITIALIZED ;
 scalar_t__ ERROR_INVALID_HANDLE ;
 scalar_t__ FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FTP_TRANSFER_TYPE_UNKNOWN ;
 scalar_t__ FtpGetFileA (int *,char*,char*,scalar_t__,int ,int ,int ) ;
 scalar_t__ GetLastError () ;
 int SetLastError (int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_getfile_no_open(void)
{
    BOOL bRet;


    SetLastError(0xdeadbeef);
    bRet = FtpGetFileA(((void*)0), "welcome.msg", "should_be_non_existing_deadbeef", FALSE, FILE_ATTRIBUTE_NORMAL, FTP_TRANSFER_TYPE_UNKNOWN, 0);
    ok ( bRet == FALSE, "Expected FtpGetFileA to fail\n");
    ok ( GetLastError() == ERROR_INTERNET_NOT_INITIALIZED ||
         GetLastError() == ERROR_INVALID_HANDLE,
        "Expected ERROR_INTERNET_NOT_INITIALIZED or ERROR_INVALID_HANDLE (win98), got %d\n", GetLastError());
}
