
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* baseVtbl; } ;
struct TYPE_5__ {int (* Invalidate ) (TYPE_2__*) ;} ;
typedef TYPE_2__ StorageBaseImpl ;


 int stub1 (TYPE_2__*) ;

__attribute__((used)) static inline void StorageBaseImpl_Invalidate(StorageBaseImpl *This)
{
  This->baseVtbl->Invalidate(This);
}
