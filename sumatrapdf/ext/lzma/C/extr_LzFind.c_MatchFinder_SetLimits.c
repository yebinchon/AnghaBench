
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UInt32 ;
struct TYPE_3__ {scalar_t__ pos; scalar_t__ cyclicBufferSize; scalar_t__ cyclicBufferPos; scalar_t__ streamPos; scalar_t__ keepSizeAfter; scalar_t__ matchMaxLen; scalar_t__ posLimit; scalar_t__ lenLimit; } ;
typedef TYPE_1__ CMatchFinder ;


 scalar_t__ kMaxValForNormalize ;

__attribute__((used)) static void MatchFinder_SetLimits(CMatchFinder *p)
{
  UInt32 limit = kMaxValForNormalize - p->pos;
  UInt32 limit2 = p->cyclicBufferSize - p->cyclicBufferPos;
  if (limit2 < limit)
    limit = limit2;
  limit2 = p->streamPos - p->pos;
  if (limit2 <= p->keepSizeAfter)
  {
    if (limit2 > 0)
      limit2 = 1;
  }
  else
    limit2 -= p->keepSizeAfter;
  if (limit2 < limit)
    limit = limit2;
  {
    UInt32 lenLimit = p->streamPos - p->pos;
    if (lenLimit > p->matchMaxLen)
      lenLimit = p->matchMaxLen;
    p->lenLimit = lenLimit;
  }
  p->posLimit = p->pos + limit;
}
