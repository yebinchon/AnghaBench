
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_6__ {TYPE_1__* baseVtbl; } ;
struct TYPE_5__ {int (* SetTransactionSig ) (TYPE_2__*,int ) ;} ;
typedef TYPE_2__ StorageBaseImpl ;
typedef int HRESULT ;


 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static inline HRESULT StorageBaseImpl_SetTransactionSig(StorageBaseImpl *This,
  ULONG value)
{
  return This->baseVtbl->SetTransactionSig(This, value);
}
