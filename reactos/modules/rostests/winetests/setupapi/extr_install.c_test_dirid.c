
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIRID_NULL ;
 int DIRID_SYSTEM ;
 int DIRID_WINDOWS ;
 int GetSystemDirectoryA (char*,int) ;
 int GetWindowsDirectoryA (char*,int) ;
 int MAX_PATH ;
 int check_dirid (int,char*) ;
 int strcat (char*,char*) ;

__attribute__((used)) static void test_dirid(void)
{
    char expected[MAX_PATH];

    check_dirid(DIRID_NULL, "");

    GetWindowsDirectoryA(expected, MAX_PATH);
    check_dirid(DIRID_WINDOWS, expected);

    GetSystemDirectoryA(expected, MAX_PATH);
    check_dirid(DIRID_SYSTEM, expected);

    strcat(expected, "\\unknown");
    check_dirid(40, expected);
}
