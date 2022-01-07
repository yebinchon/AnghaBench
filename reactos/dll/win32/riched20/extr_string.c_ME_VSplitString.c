
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nBuffer; int nLen; char* szData; } ;
typedef TYPE_1__ ME_String ;


 TYPE_1__* ME_MakeStringN (char*,int) ;
 int assert (int) ;

ME_String *ME_VSplitString(ME_String *orig, int charidx)
{
  ME_String *s;

  assert(orig->nBuffer);
  assert(charidx>=0);
  assert(charidx<=orig->nLen);

  s = ME_MakeStringN(orig->szData+charidx, orig->nLen-charidx);
  if (!s) return ((void*)0);

  orig->nLen = charidx;
  orig->szData[charidx] = '\0';
  return s;
}
