
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
typedef int ULARGE_INTEGER ;
struct TYPE_6__ {TYPE_1__* baseVtbl; } ;
struct TYPE_5__ {int (* StreamWriteAt ) (TYPE_2__*,int ,int ,int ,void const*,int *) ;} ;
typedef TYPE_2__ StorageBaseImpl ;
typedef int HRESULT ;
typedef int DirRef ;


 int stub1 (TYPE_2__*,int ,int ,int ,void const*,int *) ;

__attribute__((used)) static inline HRESULT StorageBaseImpl_StreamWriteAt(StorageBaseImpl *This,
  DirRef index, ULARGE_INTEGER offset, ULONG size, const void *buffer, ULONG *bytesWritten)
{
  return This->baseVtbl->StreamWriteAt(This, index, offset, size, buffer, bytesWritten);
}
