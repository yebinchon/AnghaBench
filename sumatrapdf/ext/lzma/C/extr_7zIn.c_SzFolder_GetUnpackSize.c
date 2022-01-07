
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UInt64 ;
struct TYPE_5__ {int * UnpackSizes; } ;
typedef TYPE_1__ CSzFolder ;


 scalar_t__ SzFolder_FindBindPairForOutStream (TYPE_1__*,int) ;
 scalar_t__ SzFolder_GetNumOutStreams (TYPE_1__*) ;

UInt64 SzFolder_GetUnpackSize(CSzFolder *p)
{
  int i = (int)SzFolder_GetNumOutStreams(p);
  if (i == 0)
    return 0;
  for (i--; i >= 0; i--)
    if (SzFolder_FindBindPairForOutStream(p, i) < 0)
      return p->UnpackSizes[i];

  return 0;
}
