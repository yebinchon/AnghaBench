
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t UInt64 ;
typedef size_t UInt32 ;
struct TYPE_9__ {TYPE_3__* Files; scalar_t__ PackSizes; TYPE_2__* Folders; } ;
struct TYPE_12__ {size_t* FileIndexToFolderIndexMap; size_t* FolderStartFileIndex; TYPE_1__ db; scalar_t__* FolderStartPackStreamIndex; } ;
struct TYPE_11__ {scalar_t__ Crc; scalar_t__ CrcDefined; scalar_t__ Size; } ;
struct TYPE_10__ {scalar_t__ UnpackCRC; scalar_t__ UnpackCRCDefined; } ;
typedef scalar_t__ SRes ;
typedef int ISzAlloc ;
typedef int ILookInStream ;
typedef TYPE_2__ CSzFolder ;
typedef TYPE_3__ CSzFileItem ;
typedef TYPE_4__ CSzArEx ;
typedef int Byte ;


 scalar_t__ CrcCalc (int *,size_t) ;
 scalar_t__ IAlloc_Alloc (int *,size_t) ;
 int IAlloc_Free (int *,int *) ;
 int LookInStream_SeekTo (int *,size_t) ;
 int RINOK (int ) ;
 scalar_t__ SZ_ERROR_CRC ;
 scalar_t__ SZ_ERROR_FAIL ;
 scalar_t__ SZ_ERROR_MEM ;
 scalar_t__ SZ_OK ;
 size_t SzArEx_GetFolderStreamPos (TYPE_4__ const*,size_t,int ) ;
 scalar_t__ SzFolder_Decode (TYPE_2__*,scalar_t__,int *,size_t,int *,size_t,int *) ;
 size_t SzFolder_GetUnpackSize (TYPE_2__*) ;

SRes SzArEx_Extract(
    const CSzArEx *p,
    ILookInStream *inStream,
    UInt32 fileIndex,
    UInt32 *blockIndex,
    Byte **outBuffer,
    size_t *outBufferSize,
    size_t *offset,
    size_t *outSizeProcessed,
    ISzAlloc *allocMain,
    ISzAlloc *allocTemp)
{
  UInt32 folderIndex = p->FileIndexToFolderIndexMap[fileIndex];
  SRes res = SZ_OK;
  *offset = 0;
  *outSizeProcessed = 0;
  if (folderIndex == (UInt32)-1)
  {
    IAlloc_Free(allocMain, *outBuffer);
    *blockIndex = folderIndex;
    *outBuffer = 0;
    *outBufferSize = 0;
    return SZ_OK;
  }

  if (*outBuffer == 0 || *blockIndex != folderIndex)
  {
    CSzFolder *folder = p->db.Folders + folderIndex;
    UInt64 unpackSizeSpec = SzFolder_GetUnpackSize(folder);
    size_t unpackSize = (size_t)unpackSizeSpec;
    UInt64 startOffset = SzArEx_GetFolderStreamPos(p, folderIndex, 0);

    if (unpackSize != unpackSizeSpec)
      return SZ_ERROR_MEM;
    *blockIndex = folderIndex;
    IAlloc_Free(allocMain, *outBuffer);
    *outBuffer = 0;

    RINOK(LookInStream_SeekTo(inStream, startOffset));

    if (res == SZ_OK)
    {
      *outBufferSize = unpackSize;
      if (unpackSize != 0)
      {
        *outBuffer = (Byte *)IAlloc_Alloc(allocMain, unpackSize);
        if (*outBuffer == 0)
          res = SZ_ERROR_MEM;
      }
      if (res == SZ_OK)
      {
        res = SzFolder_Decode(folder,
          p->db.PackSizes + p->FolderStartPackStreamIndex[folderIndex],
          inStream, startOffset,
          *outBuffer, unpackSize, allocTemp);
        if (res == SZ_OK)
        {
          if (folder->UnpackCRCDefined)
          {
            if (CrcCalc(*outBuffer, unpackSize) != folder->UnpackCRC)
              res = SZ_ERROR_CRC;
          }
        }
      }
    }
  }
  if (res == SZ_OK)
  {
    UInt32 i;
    CSzFileItem *fileItem = p->db.Files + fileIndex;
    *offset = 0;
    for (i = p->FolderStartFileIndex[folderIndex]; i < fileIndex; i++)
      *offset += (UInt32)p->db.Files[i].Size;
    *outSizeProcessed = (size_t)fileItem->Size;
    if (*offset + *outSizeProcessed > *outBufferSize)
      return SZ_ERROR_FAIL;
    if (fileItem->CrcDefined && CrcCalc(*outBuffer + *offset, *outSizeProcessed) != fileItem->Crc)
      res = SZ_ERROR_CRC;
  }
  return res;
}
