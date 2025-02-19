
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int * lpVtbl; } ;
struct TYPE_11__ {int LowPart; scalar_t__ HighPart; } ;
struct TYPE_12__ {TYPE_3__ u; } ;
struct TYPE_9__ {scalar_t__ LowPart; scalar_t__ HighPart; } ;
struct TYPE_10__ {TYPE_1__ u; } ;
struct TYPE_13__ {int ref; TYPE_6__ IStream_iface; scalar_t__ supportHandle; TYPE_4__ streamSize; TYPE_2__ currentPosition; } ;
typedef TYPE_5__ NoStatStreamImpl ;
typedef TYPE_6__ IStream ;
typedef scalar_t__ HGLOBAL ;


 int GMEM_MOVEABLE ;
 int GMEM_NODISCARD ;
 int GMEM_SHARE ;
 int GetProcessHeap () ;
 scalar_t__ GlobalAlloc (int,int ) ;
 int GlobalSize (scalar_t__) ;
 TYPE_5__* HeapAlloc (int ,int ,int) ;
 int NoStatStreamImpl_Vtbl ;

__attribute__((used)) static IStream* NoStatStream_Construct(HGLOBAL hGlobal)
{
  NoStatStreamImpl* newStream;

  newStream = HeapAlloc(GetProcessHeap(), 0, sizeof(NoStatStreamImpl));
  if (newStream!=0)
  {
    newStream->IStream_iface.lpVtbl = &NoStatStreamImpl_Vtbl;
    newStream->ref = 1;
    newStream->supportHandle = hGlobal;

    if (!newStream->supportHandle)
      newStream->supportHandle = GlobalAlloc(GMEM_MOVEABLE | GMEM_NODISCARD |
          GMEM_SHARE, 0);
    newStream->currentPosition.u.HighPart = 0;
    newStream->currentPosition.u.LowPart = 0;
    newStream->streamSize.u.HighPart = 0;
    newStream->streamSize.u.LowPart = GlobalSize(newStream->supportHandle);
  }
  return &newStream->IStream_iface;
}
