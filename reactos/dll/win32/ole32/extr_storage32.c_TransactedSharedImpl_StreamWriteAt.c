
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
typedef int ULARGE_INTEGER ;
struct TYPE_4__ {TYPE_1__* scratch; } ;
typedef TYPE_2__ TransactedSharedImpl ;
struct TYPE_3__ {int base; } ;
typedef int StorageBaseImpl ;
typedef int HRESULT ;
typedef int DirRef ;


 int StorageBaseImpl_StreamWriteAt (int *,int ,int ,int ,void const*,int *) ;

__attribute__((used)) static HRESULT TransactedSharedImpl_StreamWriteAt(StorageBaseImpl *base,
  DirRef index, ULARGE_INTEGER offset, ULONG size, const void *buffer, ULONG *bytesWritten)
{
  TransactedSharedImpl* This = (TransactedSharedImpl*) base;

  return StorageBaseImpl_StreamWriteAt(&This->scratch->base,
    index, offset, size, buffer, bytesWritten);
}
