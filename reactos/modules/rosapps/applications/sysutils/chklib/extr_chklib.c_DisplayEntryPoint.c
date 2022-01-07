
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPCSTR ;
typedef int HANDLE ;
typedef int FARPROC ;


 int GetLastError () ;
 int GetProcAddress (int const,char*) ;
 int PrintWin32Error (char*,int ) ;
 int printf (char*,char*,...) ;

__attribute__((used)) static
void
DisplayEntryPoint(
 const HANDLE dll,
 LPCSTR SymbolName
 )
{
 FARPROC EntryPoint;

 printf(
  "[%s]\n",
  SymbolName
  );
 EntryPoint = GetProcAddress(
   dll,
   SymbolName
   );
 if (!EntryPoint)
 {
  PrintWin32Error(
   L"GetProcAddress",
   GetLastError()
   );
  return;
 }
 printf(
  "0x%p  %s\n",
  EntryPoint,
  SymbolName
  );
}
