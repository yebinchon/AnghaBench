
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ tableSize; } ;
struct TYPE_6__ {int pb; int ProbPrices; TYPE_3__ repLenEnc; TYPE_3__ lenEnc; scalar_t__ numFastBytes; int fastMode; } ;
typedef TYPE_1__ CLzmaEnc ;


 int FillAlignPrices (TYPE_1__*) ;
 int FillDistancesPrices (TYPE_1__*) ;
 scalar_t__ LZMA_MATCH_LEN_MIN ;
 int LenPriceEnc_UpdateTables (TYPE_3__*,int,int ) ;

void LzmaEnc_InitPrices(CLzmaEnc *p)
{
  if (!p->fastMode)
  {
    FillDistancesPrices(p);
    FillAlignPrices(p);
  }

  p->lenEnc.tableSize =
  p->repLenEnc.tableSize =
      p->numFastBytes + 1 - LZMA_MATCH_LEN_MIN;
  LenPriceEnc_UpdateTables(&p->lenEnc, 1 << p->pb, p->ProbPrices);
  LenPriceEnc_UpdateTables(&p->repLenEnc, 1 << p->pb, p->ProbPrices);
}
