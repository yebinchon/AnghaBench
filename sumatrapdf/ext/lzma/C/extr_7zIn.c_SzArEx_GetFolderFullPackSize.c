
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UInt64 ;
typedef size_t UInt32 ;
struct TYPE_5__ {scalar_t__* PackSizes; TYPE_2__* Folders; } ;
struct TYPE_7__ {size_t* FolderStartPackStreamIndex; TYPE_1__ db; } ;
struct TYPE_6__ {size_t NumPackStreams; } ;
typedef TYPE_2__ CSzFolder ;
typedef TYPE_3__ CSzArEx ;


 int SZ_ERROR_FAIL ;
 int SZ_OK ;

int SzArEx_GetFolderFullPackSize(const CSzArEx *p, UInt32 folderIndex, UInt64 *resSize)
{
  UInt32 packStreamIndex = p->FolderStartPackStreamIndex[folderIndex];
  CSzFolder *folder = p->db.Folders + folderIndex;
  UInt64 size = 0;
  UInt32 i;
  for (i = 0; i < folder->NumPackStreams; i++)
  {
    UInt64 t = size + p->db.PackSizes[packStreamIndex + i];
    if (t < size)
      return SZ_ERROR_FAIL;
    size = t;
  }
  *resSize = size;
  return SZ_OK;
}
