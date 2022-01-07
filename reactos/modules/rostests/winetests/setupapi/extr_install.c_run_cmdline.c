
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef char* LPCSTR ;
typedef int CHAR ;


 int CP_ACP ;
 int InstallHinfSectionW (int *,int *,int *,int ) ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,int *,int,int *,int) ;
 int sprintf (int *,char*,char*,int,char*) ;

__attribute__((used)) static void run_cmdline(LPCSTR section, int mode, LPCSTR path)
{
    CHAR cmdline[MAX_PATH * 2];
    WCHAR cmdlinew[MAX_PATH * 2];

    sprintf(cmdline, "%s %d %s", section, mode, path);
    MultiByteToWideChar(CP_ACP, 0, cmdline, -1, cmdlinew, MAX_PATH*2);
    InstallHinfSectionW(((void*)0), ((void*)0), cmdlinew, 0);
}
