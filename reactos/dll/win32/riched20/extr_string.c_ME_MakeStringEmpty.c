
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {int nLen; int nBuffer; scalar_t__* szData; } ;
typedef TYPE_1__ ME_String ;


 int ME_GetOptimalBuffer (int) ;
 scalar_t__* heap_alloc (int) ;
 int heap_free (TYPE_1__*) ;
 int heap_string_free ;
 TYPE_1__* make_string (int ) ;

ME_String *ME_MakeStringEmpty(int nMaxChars)
{
  ME_String *s = make_string( heap_string_free );

  if (!s) return ((void*)0);
  s->nLen = nMaxChars;
  s->nBuffer = ME_GetOptimalBuffer(s->nLen + 1);
  s->szData = heap_alloc( s->nBuffer * sizeof(WCHAR) );
  if (!s->szData)
  {
    heap_free( s );
    return ((void*)0);
  }
  s->szData[s->nLen] = 0;
  return s;
}
