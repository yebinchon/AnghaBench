
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CloseHost () ;
 int CloseTrace () ;
 int DisposeReadline () ;
 int DisposeWinsock (int ) ;
 int EndLog () ;
 int Plug () ;
 int SavePrefs () ;
 int SetXtermTitle (char*) ;

__attribute__((used)) static void
PostShell(void)
{
 SetXtermTitle("RESTORE");
 CloseHost();
 DisposeReadline();
 CloseTrace();
 SavePrefs();
 EndLog();
 Plug();
 DisposeWinsock(0);
}
