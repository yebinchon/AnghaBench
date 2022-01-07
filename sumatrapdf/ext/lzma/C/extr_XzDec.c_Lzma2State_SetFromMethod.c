
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int Code; int Init; int SetProps; int Free; int * p; } ;
struct TYPE_6__ {int * (* Alloc ) (TYPE_1__*,int) ;} ;
typedef int SRes ;
typedef TYPE_1__ ISzAlloc ;
typedef TYPE_2__ IStateCoder ;
typedef int CLzma2Dec ;


 int Lzma2Dec_Construct (int *) ;
 int Lzma2State_Code ;
 int Lzma2State_Free ;
 int Lzma2State_Init ;
 int Lzma2State_SetProps ;
 int SZ_ERROR_MEM ;
 int SZ_OK ;
 int * stub1 (TYPE_1__*,int) ;

__attribute__((used)) static SRes Lzma2State_SetFromMethod(IStateCoder *p, ISzAlloc *alloc)
{
  CLzma2Dec *decoder = alloc->Alloc(alloc, sizeof(CLzma2Dec));
  p->p = decoder;
  if (decoder == 0)
    return SZ_ERROR_MEM;
  p->Free = Lzma2State_Free;
  p->SetProps = Lzma2State_SetProps;
  p->Init = Lzma2State_Init;
  p->Code = Lzma2State_Code;
  Lzma2Dec_Construct(decoder);
  return SZ_OK;
}
