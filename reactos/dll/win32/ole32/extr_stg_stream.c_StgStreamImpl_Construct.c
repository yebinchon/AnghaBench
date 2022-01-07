
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ LowPart; scalar_t__ HighPart; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_11__ {TYPE_2__ currentPosition; int dirEntry; int grfMode; int * parentStorage; scalar_t__ ref; TYPE_3__ IStream_iface; } ;
typedef int StorageBaseImpl ;
typedef TYPE_4__ StgStreamImpl ;
typedef int DirRef ;
typedef int DWORD ;


 int GetProcessHeap () ;
 TYPE_4__* HeapAlloc (int ,int ,int) ;
 int StgStreamVtbl ;
 int StorageBaseImpl_AddStream (int *,TYPE_4__*) ;

StgStreamImpl* StgStreamImpl_Construct(
  StorageBaseImpl* parentStorage,
    DWORD grfMode,
    DirRef dirEntry)
{
  StgStreamImpl* newStream;

  newStream = HeapAlloc(GetProcessHeap(), 0, sizeof(StgStreamImpl));

  if (newStream)
  {



    newStream->IStream_iface.lpVtbl = &StgStreamVtbl;
    newStream->ref = 0;

    newStream->parentStorage = parentStorage;
    newStream->grfMode = grfMode;
    newStream->dirEntry = dirEntry;




    newStream->currentPosition.u.HighPart = 0;
    newStream->currentPosition.u.LowPart = 0;


    StorageBaseImpl_AddStream(parentStorage, newStream);
  }

  return newStream;
}
