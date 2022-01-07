
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int nLen; scalar_t__ nBuffer; int * szData; } ;
typedef TYPE_1__ ME_String ;


 TYPE_1__* make_string (int *) ;

ME_String *ME_MakeStringConst(const WCHAR *str, int len)
{
  ME_String *s = make_string( ((void*)0) );
  if (!s) return ((void*)0);

  s->szData = (WCHAR *)str;
  s->nLen = len;
  s->nBuffer = 0;
  return s;
}
