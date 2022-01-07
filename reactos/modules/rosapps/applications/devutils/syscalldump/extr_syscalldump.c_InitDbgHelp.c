
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef int BOOL ;


 int FALSE ;
 int SYMOPT_ALLOW_ABSOLUTE_SYMBOLS ;
 int SYMOPT_DEFERRED_LOADS ;
 int SymGetOptions () ;
 int SymInitialize (int ,int ,int ) ;
 int SymSetOptions (int) ;
 int SymSetSearchPath (int ,char*) ;
 int TRUE ;

BOOL InitDbgHelp(HANDLE hProcess)
{
 if (!SymInitialize(hProcess, 0, FALSE))
  return FALSE;

    SymSetOptions(SymGetOptions() | SYMOPT_ALLOW_ABSOLUTE_SYMBOLS);
 SymSetOptions(SymGetOptions() & (~SYMOPT_DEFERRED_LOADS));
 SymSetSearchPath(hProcess, "srv**symbols*http://msdl.microsoft.com/download/symbols");
 return TRUE;
}
