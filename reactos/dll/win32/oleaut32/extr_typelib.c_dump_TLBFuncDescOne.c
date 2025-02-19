
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int cParams; } ;
struct TYPE_6__ {void* Name; void* HelpString; void* Entry; TYPE_4__ funcdesc; TYPE_1__* pParamDesc; } ;
struct TYPE_5__ {void* Name; } ;
typedef TYPE_2__ TLBFuncDesc ;


 scalar_t__ IS_INTRESOURCE (void*) ;
 int MESSAGE (char*,...) ;
 int TLB_get_bstr (void*) ;
 void* debugstr_w (int ) ;
 int dump_FUNCDESC (TYPE_4__*) ;

__attribute__((used)) static void dump_TLBFuncDescOne(const TLBFuncDesc * pfd)
{
  int i;
  MESSAGE("%s(%u)\n", debugstr_w(TLB_get_bstr(pfd->Name)), pfd->funcdesc.cParams);
  for (i=0;i<pfd->funcdesc.cParams;i++)
      MESSAGE("\tparm%d: %s\n",i,debugstr_w(TLB_get_bstr(pfd->pParamDesc[i].Name)));


  dump_FUNCDESC(&(pfd->funcdesc));

  MESSAGE("\thelpstring: %s\n", debugstr_w(TLB_get_bstr(pfd->HelpString)));
  if(pfd->Entry == ((void*)0))
      MESSAGE("\tentry: (null)\n");
  else if(pfd->Entry == (void*)-1)
      MESSAGE("\tentry: invalid\n");
  else if(IS_INTRESOURCE(pfd->Entry))
      MESSAGE("\tentry: %p\n", pfd->Entry);
  else
      MESSAGE("\tentry: %s\n", debugstr_w(TLB_get_bstr(pfd->Entry)));
}
