
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int * LPTSTR ;


 int CHECK_ENOUGH_MEMORY (int *) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int KEY_MAX_LEN ;
 int _T (char) ;
 int * _tcschr (int *,int ) ;
 int _tcscpy (int *,int *) ;
 int _tcslen (int *) ;
 int * currentKeyName ;

LPTSTR getRegKeyName(LPTSTR lpLine)
{
  LPTSTR keyNameBeg;
  TCHAR lpLineCopy[KEY_MAX_LEN];

  if (lpLine == ((void*)0))
    return ((void*)0);

  _tcscpy(lpLineCopy, lpLine);
  keyNameBeg = _tcschr(lpLineCopy, _T('\\'));
  if (keyNameBeg) {
      LPTSTR keyNameEnd;

      keyNameBeg++;
      keyNameEnd = _tcschr(lpLineCopy, _T(']'));
      if (keyNameEnd) {
          *keyNameEnd = _T('\0');
      }
  } else {
      keyNameBeg = lpLineCopy + _tcslen(lpLineCopy);
  }
  currentKeyName = HeapAlloc(GetProcessHeap(), 0, (_tcslen(keyNameBeg)+1)*sizeof(TCHAR));
  CHECK_ENOUGH_MEMORY(currentKeyName);
  _tcscpy(currentKeyName, keyNameBeg);
  return currentKeyName;
}
