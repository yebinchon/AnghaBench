
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TCHAR ;
typedef scalar_t__* LPTSTR ;
typedef int HKEY ;


 int ERROR_INVALID_PARAMETER ;
 int KEY_MAX_LEN ;
 int REG_CLASS_NUMBER ;
 scalar_t__ _T (char) ;
 scalar_t__* _tcschr (scalar_t__*,scalar_t__) ;
 int _tcscmp (scalar_t__*,int ) ;
 int _tcslen (scalar_t__*) ;
 int _tcsncpy (scalar_t__*,scalar_t__*,int) ;
 int * reg_class_keys ;
 int * reg_class_names ;

HKEY getRegClass(LPTSTR lpClass)
{
  LPTSTR classNameEnd;
  LPTSTR classNameBeg;
  int i;

  TCHAR lpClassCopy[KEY_MAX_LEN];

  if (lpClass == ((void*)0))
    return (HKEY)ERROR_INVALID_PARAMETER;

  _tcsncpy(lpClassCopy, lpClass, KEY_MAX_LEN);

  classNameEnd = _tcschr(lpClassCopy, _T('\\'));
  if (!classNameEnd) {
      classNameEnd = lpClassCopy + _tcslen(lpClassCopy);
      if (classNameEnd[-1] == _T(']')) {
          classNameEnd--;
      }
  }
  *classNameEnd = _T('\0');
  if (lpClassCopy[0] == _T('[')) {
      classNameBeg = lpClassCopy + 1;
  } else {
      classNameBeg = lpClassCopy;
  }
  for (i = 0; i < REG_CLASS_NUMBER; i++) {
      if (!_tcscmp(classNameBeg, reg_class_names[i])) {
          return reg_class_keys[i];
      }
  }
  return (HKEY)ERROR_INVALID_PARAMETER;
}
