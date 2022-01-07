
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef size_t UInt64 ;
typedef scalar_t__ UInt32 ;
struct TYPE_24__ {scalar_t__* data; int size; } ;
struct TYPE_23__ {int startPosAfterHeader; } ;
struct TYPE_22__ {scalar_t__* Data; int Size; } ;
struct TYPE_21__ {int (* Seek ) (TYPE_1__*,int*,int ) ;} ;
typedef scalar_t__ SRes ;
typedef int Int64 ;
typedef int ISzAlloc ;
typedef TYPE_1__ ILookInStream ;
typedef TYPE_2__ CSzData ;
typedef TYPE_3__ CSzArEx ;
typedef TYPE_4__ CBuf ;
typedef scalar_t__ Byte ;


 int Buf_Create (TYPE_4__*,size_t,int *) ;
 int Buf_Free (TYPE_4__*,int *) ;
 int Buf_Init (TYPE_4__*) ;
 scalar_t__ CrcCalc (scalar_t__*,size_t) ;
 scalar_t__ GetUi32 (scalar_t__*) ;
 size_t GetUi64 (scalar_t__*) ;
 scalar_t__ LookInStream_Read (TYPE_1__*,scalar_t__*,size_t) ;
 int LookInStream_Read2 (TYPE_1__*,scalar_t__*,int,scalar_t__) ;
 int LookInStream_SeekTo (TYPE_1__*,int) ;
 int RINOK (int ) ;
 scalar_t__ SZ_ERROR_ARCHIVE ;
 scalar_t__ SZ_ERROR_CRC ;
 scalar_t__ SZ_ERROR_INPUT_EOF ;
 scalar_t__ SZ_ERROR_MEM ;
 scalar_t__ SZ_ERROR_NO_ARCHIVE ;
 scalar_t__ SZ_ERROR_UNSUPPORTED ;
 scalar_t__ SZ_OK ;
 int SZ_SEEK_CUR ;
 int SZ_SEEK_END ;
 scalar_t__ SzReadAndDecodePackedStreams (TYPE_1__*,TYPE_2__*,TYPE_4__*,int,int *) ;
 scalar_t__ SzReadHeader (TYPE_3__*,TYPE_2__*,int *,int *) ;
 scalar_t__ SzReadID (TYPE_2__*,size_t*) ;
 int TestSignatureCandidate (scalar_t__*) ;
 size_t k7zIdEncodedHeader ;
 size_t k7zIdHeader ;
 scalar_t__ k7zMajorVersion ;
 int k7zStartHeaderSize ;
 int stub1 (TYPE_1__*,int*,int ) ;
 int stub2 (TYPE_1__*,int*,int ) ;

__attribute__((used)) static SRes SzArEx_Open2(
    CSzArEx *p,
    ILookInStream *inStream,
    ISzAlloc *allocMain,
    ISzAlloc *allocTemp)
{
  Byte header[k7zStartHeaderSize];
  Int64 startArcPos;
  UInt64 nextHeaderOffset, nextHeaderSize;
  size_t nextHeaderSizeT;
  UInt32 nextHeaderCRC;
  CBuf buffer;
  SRes res;

  startArcPos = 0;
  RINOK(inStream->Seek(inStream, &startArcPos, SZ_SEEK_CUR));

  RINOK(LookInStream_Read2(inStream, header, k7zStartHeaderSize, SZ_ERROR_NO_ARCHIVE));

  if (!TestSignatureCandidate(header))
    return SZ_ERROR_NO_ARCHIVE;
  if (header[6] != k7zMajorVersion)
    return SZ_ERROR_UNSUPPORTED;

  nextHeaderOffset = GetUi64(header + 12);
  nextHeaderSize = GetUi64(header + 20);
  nextHeaderCRC = GetUi32(header + 28);

  p->startPosAfterHeader = startArcPos + k7zStartHeaderSize;

  if (CrcCalc(header + 12, 20) != GetUi32(header + 8))
    return SZ_ERROR_CRC;

  nextHeaderSizeT = (size_t)nextHeaderSize;
  if (nextHeaderSizeT != nextHeaderSize)
    return SZ_ERROR_MEM;
  if (nextHeaderSizeT == 0)
    return SZ_OK;
  if (nextHeaderOffset > nextHeaderOffset + nextHeaderSize ||
      nextHeaderOffset > nextHeaderOffset + nextHeaderSize + k7zStartHeaderSize)
    return SZ_ERROR_NO_ARCHIVE;

  {
    Int64 pos = 0;
    RINOK(inStream->Seek(inStream, &pos, SZ_SEEK_END));
    if ((UInt64)pos < startArcPos + nextHeaderOffset ||
        (UInt64)pos < startArcPos + k7zStartHeaderSize + nextHeaderOffset ||
        (UInt64)pos < startArcPos + k7zStartHeaderSize + nextHeaderOffset + nextHeaderSize)
      return SZ_ERROR_INPUT_EOF;
  }

  RINOK(LookInStream_SeekTo(inStream, startArcPos + k7zStartHeaderSize + nextHeaderOffset));

  if (!Buf_Create(&buffer, nextHeaderSizeT, allocTemp))
    return SZ_ERROR_MEM;

  res = LookInStream_Read(inStream, buffer.data, nextHeaderSizeT);
  if (res == SZ_OK)
  {
    res = SZ_ERROR_ARCHIVE;
    if (CrcCalc(buffer.data, nextHeaderSizeT) == nextHeaderCRC)
    {
      CSzData sd;
      UInt64 type;
      sd.Data = buffer.data;
      sd.Size = buffer.size;
      res = SzReadID(&sd, &type);
      if (res == SZ_OK)
      {
        if (type == k7zIdEncodedHeader)
        {
          CBuf outBuffer;
          Buf_Init(&outBuffer);
          res = SzReadAndDecodePackedStreams(inStream, &sd, &outBuffer, p->startPosAfterHeader, allocTemp);
          if (res != SZ_OK)
            Buf_Free(&outBuffer, allocTemp);
          else
          {
            Buf_Free(&buffer, allocTemp);
            buffer.data = outBuffer.data;
            buffer.size = outBuffer.size;
            sd.Data = buffer.data;
            sd.Size = buffer.size;
            res = SzReadID(&sd, &type);
          }
        }
      }
      if (res == SZ_OK)
      {
        if (type == k7zIdHeader)
          res = SzReadHeader(p, &sd, allocMain, allocTemp);
        else
          res = SZ_ERROR_UNSUPPORTED;
      }
    }
  }
  Buf_Free(&buffer, allocTemp);
  return res;
}
