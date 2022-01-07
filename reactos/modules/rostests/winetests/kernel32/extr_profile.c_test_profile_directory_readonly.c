
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lpStruct ;
typedef int attributes ;
struct TYPE_3__ {int nLength; int lpSecurityDescriptor; int member_0; } ;
typedef TYPE_1__ SECURITY_ATTRIBUTES ;
typedef int CHAR ;
typedef scalar_t__ BOOL ;


 scalar_t__ ConvertStringSecurityDescriptorToSecurityDescriptorA (char const*,int ,int *,int *) ;
 scalar_t__ CreateDirectoryA (int *,TYPE_1__*) ;
 scalar_t__ FALSE ;
 scalar_t__ GetLastError () ;
 int GetTempPathA (int,int *) ;
 int MAX_PATH ;
 scalar_t__ RemoveDirectoryA (int *) ;
 int SDDL_REVISION_1 ;
 scalar_t__ TRUE ;
 scalar_t__ WritePrivateProfileSectionA (char*,char*,int *) ;
 scalar_t__ WritePrivateProfileStringA (char*,char*,char*,int *) ;
 scalar_t__ WritePrivateProfileStructA (char*,char*,char*,int,int *) ;
 int lstrcatA (int *,char*) ;
 int ok (int,char*,scalar_t__) ;
 int strcpy (int *,int *) ;

__attribute__((used)) static void test_profile_directory_readonly(void)
{
    BOOL ret;
    CHAR path_folder[MAX_PATH];
    CHAR path_file[MAX_PATH];
    const char *sddl_string_everyone_readonly = "D:PAI(A;;0x1200a9;;;WD)";
    SECURITY_ATTRIBUTES attributes = {0};
    char lpStruct[] = { 's', 't', 'r', 'i', 'n', 'g' };

    attributes.nLength = sizeof(attributes);
    ret = ConvertStringSecurityDescriptorToSecurityDescriptorA(sddl_string_everyone_readonly, SDDL_REVISION_1, &attributes.lpSecurityDescriptor, ((void*)0));
    ok(ret == TRUE, "ConvertStringSecurityDescriptorToSecurityDescriptor failed: %d\n", GetLastError());

    GetTempPathA(MAX_PATH, path_folder);
    lstrcatA(path_folder, "wine-test");

    strcpy(path_file, path_folder);
    lstrcatA(path_file, "\\tmp.ini");

    ret = CreateDirectoryA(path_folder, &attributes);
    ok(ret == TRUE, "CreateDirectoryA failed: %d\n", GetLastError());

    ret = WritePrivateProfileStringA("App", "key", "string", path_file);
    ok(ret == FALSE, "Expected FALSE, got %d\n", ret);

    ret = WritePrivateProfileSectionA("App", "key=string", path_file);
    ok(ret == FALSE, "Expected FALSE, got %d\n", ret);

    ret = WritePrivateProfileStructA("App", "key", lpStruct, sizeof(lpStruct), path_file);
    ok(ret == FALSE, "Expected FALSE, got %d\n", ret);

    ret = RemoveDirectoryA(path_folder);
    ok(ret == TRUE, "RemoveDirectoryA failed: %d\n", GetLastError());
}
