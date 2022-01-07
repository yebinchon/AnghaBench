
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int TCHAR ;
typedef scalar_t__* LPTSTR ;


 int GetProcessHeap () ;
 scalar_t__* HeapAlloc (int ,int ,int) ;
 scalar_t__ _T (char) ;
 int _tcscpy (scalar_t__*,scalar_t__*) ;
 int _tcslen (scalar_t__*) ;

LPTSTR getArg(LPTSTR arg)
{
  LPTSTR tmp = ((void*)0);
  ULONG len;

  if (arg == ((void*)0)) return ((void*)0);


  len = _tcslen(arg);
  if (arg[len-1] == _T('\"')) arg[len-1] = _T('\0');
  if (arg[0] == _T('\"')) arg++;
  tmp = HeapAlloc(GetProcessHeap(), 0, (_tcslen(arg)+1) * sizeof(TCHAR));
  _tcscpy(tmp, arg);
  return tmp;
}
