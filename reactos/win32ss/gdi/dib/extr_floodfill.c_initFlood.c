
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_6__ {int * floodStart; int * floodData; } ;
struct TYPE_5__ {int right; int left; int bottom; int top; } ;
typedef TYPE_1__ RECTL ;
typedef int FLOODITEM ;
typedef TYPE_2__ FLOODINFO ;
typedef int BOOL ;


 int DPRINT (char*,int *,int *) ;
 int * ExAllocatePoolWithTag (int ,int,int ) ;
 int FALSE ;
 int NonPagedPool ;
 int TAG_DIB ;
 int TRUE ;

__attribute__((used)) static __inline BOOL initFlood(FLOODINFO *info, RECTL *DstRect)
{
  ULONG width = DstRect->right - DstRect->left;
  ULONG height = DstRect->bottom - DstRect->top;
  info->floodData = ExAllocatePoolWithTag(NonPagedPool, width * height * sizeof(FLOODITEM), TAG_DIB);
  if (info->floodData == ((void*)0))
  {
    return FALSE;
  }
  info->floodStart = info->floodData + (width * height);
  DPRINT("Allocated flood stack from %p to %p\n", info->floodData, info->floodStart);
  return TRUE;
}
