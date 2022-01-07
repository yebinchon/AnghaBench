
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
typedef int ULARGE_INTEGER ;
struct TYPE_6__ {TYPE_1__* baseVtbl; } ;
struct TYPE_5__ {int (* StreamReadAt ) (TYPE_2__*,int ,int ,int ,void*,int *) ;} ;
typedef TYPE_2__ StorageBaseImpl ;
typedef int HRESULT ;
typedef int DirRef ;


 int stub1 (TYPE_2__*,int ,int ,int ,void*,int *) ;

__attribute__((used)) static inline HRESULT StorageBaseImpl_StreamReadAt(StorageBaseImpl *This,
  DirRef index, ULARGE_INTEGER offset, ULONG size, void *buffer, ULONG *bytesRead)
{
  return This->baseVtbl->StreamReadAt(This, index, offset, size, buffer, bytesRead);
}
