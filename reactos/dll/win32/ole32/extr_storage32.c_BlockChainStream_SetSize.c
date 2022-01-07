
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ QuadPart; } ;
typedef TYPE_1__ ULARGE_INTEGER ;
typedef int BlockChainStream ;
typedef int BOOL ;


 int BlockChainStream_Enlarge (int *,TYPE_1__) ;
 TYPE_1__ BlockChainStream_GetSize (int *) ;
 int BlockChainStream_Shrink (int *,TYPE_1__) ;
 int TRUE ;

BOOL BlockChainStream_SetSize(
  BlockChainStream* This,
  ULARGE_INTEGER newSize)
{
  ULARGE_INTEGER size = BlockChainStream_GetSize(This);

  if (newSize.QuadPart == size.QuadPart)
    return TRUE;

  if (newSize.QuadPart < size.QuadPart)
  {
    BlockChainStream_Shrink(This, newSize);
  }
  else
  {
    BlockChainStream_Enlarge(This, newSize);
  }

  return TRUE;
}
