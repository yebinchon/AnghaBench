
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cbSize; } ;
typedef TYPE_1__ CHARFORMAT2W ;


 int assert (int) ;

void ME_CopyCharFormat(CHARFORMAT2W *pDest, const CHARFORMAT2W *pSrc)
{

  assert(pSrc->cbSize == sizeof(CHARFORMAT2W));
  assert(pDest->cbSize == sizeof(CHARFORMAT2W));
  *pDest = *pSrc;
}
