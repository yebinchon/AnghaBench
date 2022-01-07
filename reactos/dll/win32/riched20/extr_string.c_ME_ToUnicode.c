
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int * LPVOID ;
typedef scalar_t__ LONG ;
typedef void* INT ;


 scalar_t__ CP_UNICODE ;
 void* MultiByteToWideChar (scalar_t__,int ,int *,int,int *,int) ;
 int * heap_alloc (int) ;
 void* lstrlenW (int *) ;

LPWSTR ME_ToUnicode(LONG codepage, LPVOID psz, INT *len)
{
  *len = 0;
  if (!psz) return ((void*)0);

  if (codepage == CP_UNICODE)
  {
    *len = lstrlenW(psz);
    return psz;
  }
  else {
    WCHAR *tmp;
    int nChars = MultiByteToWideChar(codepage, 0, psz, -1, ((void*)0), 0);

    if(!nChars) return ((void*)0);

    if((tmp = heap_alloc( nChars * sizeof(WCHAR) )) != ((void*)0))
      *len = MultiByteToWideChar(codepage, 0, psz, -1, tmp, nChars) - 1;
    return tmp;
  }
}
