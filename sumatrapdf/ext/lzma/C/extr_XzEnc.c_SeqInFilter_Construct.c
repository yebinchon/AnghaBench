
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Read; } ;
struct TYPE_5__ {TYPE_1__ p; int * buf; } ;
typedef TYPE_2__ CSeqInFilter ;


 int SeqInFilter_Read ;

__attribute__((used)) static void SeqInFilter_Construct(CSeqInFilter *p)
{
  p->buf = ((void*)0);
  p->p.Read = SeqInFilter_Read;
}
