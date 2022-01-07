
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int CSIDL_DESKTOP ;
 int FALSE ;
 int TRUE ;
 int optionalShellValues ;
 int requiredShellValues ;
 int test_SHGetFolderPath (int ,int ) ;
 int test_SHGetSpecialFolderPath (int ,int ) ;
 int test_ShellValues (int ,int ,int ) ;

__attribute__((used)) static void test_PidlTypes(void)
{

    test_SHGetFolderPath(FALSE, CSIDL_DESKTOP);
    test_SHGetSpecialFolderPath(FALSE, CSIDL_DESKTOP);

    test_ShellValues(requiredShellValues, ARRAY_SIZE(requiredShellValues), FALSE);
    test_ShellValues(optionalShellValues, ARRAY_SIZE(optionalShellValues), TRUE);
}
