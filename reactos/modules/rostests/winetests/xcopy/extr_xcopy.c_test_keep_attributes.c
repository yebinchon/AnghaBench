
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 int DeleteFileA (char*) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_ATTRIBUTE_READONLY ;
 int GetFileAttributesA (char*) ;
 int SetFileAttributesA (char*,int) ;
 int ok (int,char*) ;
 scalar_t__ runcmd (char*) ;

__attribute__((used)) static void test_keep_attributes(void)
{
    DWORD rc;

    SetFileAttributesA("xcopy1", FILE_ATTRIBUTE_READONLY);

    rc = runcmd("xcopy xcopy1 xcopytest");
    ok(rc == 0, "xcopy failed to copy read only file\n");
    ok((GetFileAttributesA("xcopytest\\xcopy1") & FILE_ATTRIBUTE_READONLY) != FILE_ATTRIBUTE_READONLY,
       "xcopy should not have copied file permissions\n");
    SetFileAttributesA("xcopytest\\xcopy1", FILE_ATTRIBUTE_NORMAL);
    DeleteFileA("xcopytest\\xcopy1");

    rc = runcmd("xcopy /K xcopy1 xcopytest");
    ok(rc == 0, "xcopy failed to copy read only file with /k\n");
    ok((GetFileAttributesA("xcopytest\\xcopy1") & FILE_ATTRIBUTE_READONLY) == FILE_ATTRIBUTE_READONLY,
       "xcopy did not keep file permissions\n");
    SetFileAttributesA("xcopytest\\xcopy1", FILE_ATTRIBUTE_NORMAL);
    DeleteFileA("xcopytest\\xcopy1");

    SetFileAttributesA("xcopy1", FILE_ATTRIBUTE_NORMAL);

    }
