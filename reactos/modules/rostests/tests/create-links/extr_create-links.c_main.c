
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPSTR ;


 int CSIDL_DESKTOP ;
 int CSIDL_PROGRAMS ;
 int CoInitialize (int *) ;
 int CoUninitialize () ;
 int CreateShellLink (char*,char*,char*,int *,int *,int ,char*) ;
 int MAX_PATH ;
 int PathAddBackslash (char*) ;
 int SHGetSpecialFolderPathA (int ,char*,int ,int ) ;
 int TRUE ;
 int strcpy (int ,char*) ;

int main()
{
 char path[MAX_PATH];
 LPSTR p;

 CoInitialize(((void*)0));


 SHGetSpecialFolderPathA(0, path, CSIDL_PROGRAMS, TRUE);
 p = PathAddBackslash(path);

 strcpy(p, "start-cmd.lnk");
 CreateShellLink(path, "cmd.exe", "", ((void*)0), ((void*)0), 0, "open console window");

 strcpy(p, "start-winhello.lnk");
 CreateShellLink(path, "winhello.exe", "", ((void*)0), ((void*)0), 0, "launch winhello");



 SHGetSpecialFolderPathA(0, path, CSIDL_DESKTOP, TRUE);
 p = PathAddBackslash(path);

 strcpy(p, "start-wcmd.lnk");
 CreateShellLink(path, "cmd.exe", "", ((void*)0), ((void*)0), 0, "open console window");

 strcpy(p, "start-winemine.lnk");
 CreateShellLink(path, "winemine.exe", "", ((void*)0), ((void*)0), 0, "launch winemine");

 CoUninitialize();

 return 0;
}
