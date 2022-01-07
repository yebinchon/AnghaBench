
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int nBuffer; int nLen; scalar_t__ szData; } ;
typedef TYPE_1__ ME_String ;


 int assert (int) ;
 int memmove (scalar_t__,scalar_t__,int) ;

void ME_StrDeleteV(ME_String *s, int nVChar, int nChars)
{
  int end_ofs = nVChar + nChars;

  assert(s->nBuffer);
  assert(nChars >= 0);
  assert(nVChar >= 0);
  assert(end_ofs <= s->nLen);

  memmove(s->szData + nVChar, s->szData + end_ofs,
          (s->nLen - end_ofs + 1) * sizeof(WCHAR));
  s->nLen -= nChars;
}
