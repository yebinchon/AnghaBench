
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _TCHAR ;


 int AddExtension (int ,int ) ;
 void* BeSilent ;
 int Cleanup () ;
 int Execute (int *) ;
 int Initialize () ;
 void* IsOptionSet (int ) ;
 int MAX_OPTIONS ;
 int ** Options ;
 void* SkipEmptyLines ;
 int _T (char*) ;
 int _tprintf (int ) ;

int _tmain(int argc, _TCHAR * argv[])
{
  int a;

  _tprintf (_T("ReactOS Project Statistics\n"));
  _tprintf (_T("==========================\n\n"));

  if (argc < 2 || argc > 2 + MAX_OPTIONS)
  {
    _tprintf(_T("Usage: stats [-e] [-s] directory\n"));
    _tprintf(_T("  -e: don't count empty lines\n"));
    _tprintf(_T("  -s: be silent, don't print directories while processing\n"));
    return 1;
  }

  Initialize();
  AddExtension (_T("c\0\0"), _T("Ansi C Source files"));
  AddExtension (_T("cpp\0cxx\0\0"), _T("C++ Source files"));
  AddExtension (_T("h\0\0"), _T("Header files"));

  for(a = 1; a < argc - 1; a++)
  {
    Options[a - 1] = argv[a];
  }

  SkipEmptyLines = IsOptionSet(_T("-e"));
  BeSilent = IsOptionSet(_T("-s"));

  Execute (argv[argc - 1]);
  Cleanup();

  return 0;
}
