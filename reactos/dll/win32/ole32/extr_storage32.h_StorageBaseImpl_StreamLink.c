
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* baseVtbl; } ;
struct TYPE_5__ {int (* StreamLink ) (TYPE_2__*,int ,int ) ;} ;
typedef TYPE_2__ StorageBaseImpl ;
typedef int HRESULT ;
typedef int DirRef ;


 int stub1 (TYPE_2__*,int ,int ) ;

__attribute__((used)) static inline HRESULT StorageBaseImpl_StreamLink(StorageBaseImpl *This,
  DirRef dst, DirRef src)
{
  return This->baseVtbl->StreamLink(This, dst, src);
}
