
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numTotalThreads; int numBlockThreads; scalar_t__ blockSize; int lzmaProps; } ;
typedef TYPE_1__ CLzma2EncProps ;


 int LzmaEncProps_Init (int *) ;

void Lzma2EncProps_Init(CLzma2EncProps *p)
{
  LzmaEncProps_Init(&p->lzmaProps);
  p->numTotalThreads = -1;
  p->numBlockThreads = -1;
  p->blockSize = 0;
}
