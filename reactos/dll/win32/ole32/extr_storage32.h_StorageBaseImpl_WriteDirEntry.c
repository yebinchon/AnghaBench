
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* baseVtbl; } ;
struct TYPE_5__ {int (* WriteDirEntry ) (TYPE_2__*,int ,int const*) ;} ;
typedef TYPE_2__ StorageBaseImpl ;
typedef int HRESULT ;
typedef int DirRef ;
typedef int DirEntry ;


 int stub1 (TYPE_2__*,int ,int const*) ;

__attribute__((used)) static inline HRESULT StorageBaseImpl_WriteDirEntry(StorageBaseImpl *This,
  DirRef index, const DirEntry *data)
{
  return This->baseVtbl->WriteDirEntry(This, index, data);
}
