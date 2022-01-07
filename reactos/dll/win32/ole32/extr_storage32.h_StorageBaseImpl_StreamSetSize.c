
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULARGE_INTEGER ;
struct TYPE_6__ {TYPE_1__* baseVtbl; } ;
struct TYPE_5__ {int (* StreamSetSize ) (TYPE_2__*,int ,int ) ;} ;
typedef TYPE_2__ StorageBaseImpl ;
typedef int HRESULT ;
typedef int DirRef ;


 int stub1 (TYPE_2__*,int ,int ) ;

__attribute__((used)) static inline HRESULT StorageBaseImpl_StreamSetSize(StorageBaseImpl *This,
  DirRef index, ULARGE_INTEGER newsize)
{
  return This->baseVtbl->StreamSetSize(This, index, newsize);
}
