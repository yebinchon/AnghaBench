
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cbSize; } ;
typedef TYPE_1__ CHARFORMAT2W ;


 int ZeroMemory (TYPE_1__*,int) ;

void ME_InitCharFormat2W(CHARFORMAT2W *pFmt)
{
  ZeroMemory(pFmt, sizeof(CHARFORMAT2W));
  pFmt->cbSize = sizeof(CHARFORMAT2W);
}
