
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int nLen; int szData; } ;
typedef TYPE_1__ ME_String ;
typedef int LPCWSTR ;


 TYPE_1__* ME_MakeStringEmpty (int) ;
 int memcpy (int ,int ,int) ;

ME_String *ME_MakeStringN(LPCWSTR szText, int nMaxChars)
{
  ME_String *s = ME_MakeStringEmpty(nMaxChars);

  if (!s) return ((void*)0);
  memcpy(s->szData, szText, s->nLen * sizeof(WCHAR));
  return s;
}
