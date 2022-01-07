
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int * szData; } ;
typedef TYPE_1__ ME_String ;


 TYPE_1__* ME_MakeStringEmpty (int) ;

ME_String *ME_MakeStringR(WCHAR cRepeat, int nMaxChars)
{
  int i;
  ME_String *s = ME_MakeStringEmpty(nMaxChars);

  if (!s) return ((void*)0);
  for (i = 0; i < nMaxChars; i++)
    s->szData[i] = cRepeat;
  return s;
}
