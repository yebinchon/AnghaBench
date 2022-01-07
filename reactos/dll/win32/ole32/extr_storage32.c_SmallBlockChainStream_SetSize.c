
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ LowPart; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
typedef TYPE_2__ ULARGE_INTEGER ;
typedef int SmallBlockChainStream ;
typedef int BOOL ;


 int SmallBlockChainStream_Enlarge (int *,TYPE_2__) ;
 TYPE_2__ SmallBlockChainStream_GetSize (int *) ;
 int SmallBlockChainStream_Shrink (int *,TYPE_2__) ;
 int TRUE ;

BOOL SmallBlockChainStream_SetSize(
                SmallBlockChainStream* This,
                ULARGE_INTEGER newSize)
{
  ULARGE_INTEGER size = SmallBlockChainStream_GetSize(This);

  if (newSize.u.LowPart == size.u.LowPart)
    return TRUE;

  if (newSize.u.LowPart < size.u.LowPart)
  {
    SmallBlockChainStream_Shrink(This, newSize);
  }
  else
  {
    SmallBlockChainStream_Enlarge(This, newSize);
  }

  return TRUE;
}
