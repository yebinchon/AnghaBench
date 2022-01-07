
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef char TCHAR ;
typedef scalar_t__ HINSTANCE ;
typedef int HANDLE ;


 int DisplayEntryPoint (scalar_t__,char*) ;
 int DisplayVersion (scalar_t__,char*) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int FreeLibrary (scalar_t__) ;
 int GetLastError () ;
 int GetModuleFileName (int ,char*,int) ;
 scalar_t__ LoadLibraryA (char*) ;
 int PrintWin32Error (char*,int) ;
 int _MAX_PATH ;
 int exit (int ) ;
 int fprintf (int ,char*,char*,...) ;
 int printf (char*,char*) ;
 int stderr ;

int
main(
 int argc,
 char * argv []
 )
{
 HINSTANCE dll;
 TCHAR ModuleName [_MAX_PATH];

 if (argc < 2)
 {
  fprintf(
   stderr,
   "ReactOS System Tools\nCheck a Dynamic Link Library (DLL) for loading\nCopyright (c) 1998, 1999 Emanuele Aliberti\n\nusage: %s module [symbol [, ...]]\n",




   argv[0]
   );
  exit(EXIT_FAILURE);
 }
 dll = LoadLibraryA(argv[1]);
 if (!dll)
 {
  UINT LastError;

  LastError = GetLastError();
  PrintWin32Error(L"LoadLibrary",LastError);
  fprintf(
   stderr,
   "%s: loading %s failed (%d).\n",
   argv[0],
   argv[1],
   LastError
   );
  exit(EXIT_FAILURE);
 }
 GetModuleFileName(
  (HANDLE) dll,
  ModuleName,
  sizeof ModuleName
  );
 printf(
  "%s loaded.\n",
  ModuleName
  );



 if (argc > 2)
 {
  int CurrentSymbol;

  for ( CurrentSymbol = 2;
   (CurrentSymbol < argc);
   ++CurrentSymbol
   )
  {
   DisplayEntryPoint( dll, argv[CurrentSymbol] );
  }
 }
 FreeLibrary(dll);
 printf(
  "%s unloaded.\n",
  ModuleName
  );
 return EXIT_SUCCESS;
}
