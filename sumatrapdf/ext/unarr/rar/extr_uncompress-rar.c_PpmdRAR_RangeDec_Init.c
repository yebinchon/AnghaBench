
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct CPpmdRAR_RangeDec {int Code; int Range; TYPE_1__* Stream; scalar_t__ Low; } ;
struct TYPE_2__ {int (* Read ) (TYPE_1__*) ;} ;


 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void PpmdRAR_RangeDec_Init(struct CPpmdRAR_RangeDec *p)
{
    int i;
    p->Code = 0;
    p->Low = 0;
    p->Range = 0xFFFFFFFF;
    for (i = 0; i < 4; i++) {
        p->Code = (p->Code << 8) | p->Stream->Read(p->Stream);
    }
}
