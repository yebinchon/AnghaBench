
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ hDC; TYPE_1__* editor; } ;
struct TYPE_4__ {int texthost; } ;
typedef TYPE_2__ ME_Context ;


 int ITextHost_TxReleaseDC (int ,scalar_t__) ;

void ME_DestroyContext(ME_Context *c)
{
  if (c->hDC) ITextHost_TxReleaseDC(c->editor->texthost, c->hDC);
}
