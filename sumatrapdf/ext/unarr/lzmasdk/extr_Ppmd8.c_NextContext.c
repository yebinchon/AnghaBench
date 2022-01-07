
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ OrderFall; scalar_t__ MaxContext; scalar_t__ MinContext; int * UnitsStart; int FoundState; } ;
typedef scalar_t__ CTX_PTR ;
typedef TYPE_1__ CPpmd8 ;
typedef int Byte ;


 scalar_t__ CTX (int ) ;
 int SUCCESSOR (int ) ;
 int UpdateModel (TYPE_1__*) ;

__attribute__((used)) static void NextContext(CPpmd8 *p)
{
  CTX_PTR c = CTX(SUCCESSOR(p->FoundState));
  if (p->OrderFall == 0 && (Byte *)c >= p->UnitsStart)
    p->MinContext = p->MaxContext = c;
  else
  {
    UpdateModel(p);
    p->MinContext = p->MaxContext;
  }
}
