
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int Range; int Code; TYPE_1__* Stream; } ;
struct TYPE_4__ {int (* Read ) (void*) ;} ;
typedef TYPE_2__ CPpmd7z_RangeDec ;


 int kTopValue ;
 int stub1 (void*) ;
 int stub2 (void*) ;

__attribute__((used)) static void Range_Normalize(CPpmd7z_RangeDec *p)
{
  if (p->Range < kTopValue)
  {
    p->Code = (p->Code << 8) | p->Stream->Read((void *)p->Stream);
    p->Range <<= 8;
    if (p->Range < kTopValue)
    {
      p->Code = (p->Code << 8) | p->Stream->Read((void *)p->Stream);
      p->Range <<= 8;
    }
  }
}
