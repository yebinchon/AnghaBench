
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int range; int cacheSize; int res; scalar_t__ processed; int bufBase; int buf; scalar_t__ cache; scalar_t__ low; } ;
typedef TYPE_1__ CRangeEnc ;


 int SZ_OK ;

__attribute__((used)) static void RangeEnc_Init(CRangeEnc *p)
{

  p->low = 0;
  p->range = 0xFFFFFFFF;
  p->cacheSize = 1;
  p->cache = 0;

  p->buf = p->bufBase;

  p->processed = 0;
  p->res = SZ_OK;
}
