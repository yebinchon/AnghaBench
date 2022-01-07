
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UInt64 ;
typedef int UInt32 ;
struct TYPE_8__ {scalar_t__ flags; scalar_t__ packSize; scalar_t__ unpackSize; TYPE_1__* filters; } ;
struct TYPE_7__ {scalar_t__ id; int propsSize; int* props; } ;
typedef int SRes ;
typedef TYPE_1__ CXzFilter ;
typedef TYPE_2__ CXzBlock ;
typedef scalar_t__ Byte ;


 scalar_t__ CrcCalc (scalar_t__ const*,int) ;
 scalar_t__ GetUi32 (scalar_t__ const*) ;
 int READ_VARINT_AND_CHECK (scalar_t__ const*,unsigned int,int,scalar_t__*) ;
 int SZ_ERROR_ARCHIVE ;
 int SZ_OK ;
 scalar_t__ XZ_FILTER_PROPS_SIZE_MAX ;
 int XzBlock_GetNumFilters (TYPE_2__*) ;
 scalar_t__ XzBlock_HasPackSize (TYPE_2__*) ;
 scalar_t__ XzBlock_HasUnpackSize (TYPE_2__*) ;
 int memcpy (int*,scalar_t__ const*,size_t) ;
 int printf (char*,int,...) ;

SRes XzBlock_Parse(CXzBlock *p, const Byte *header)
{
  unsigned pos;
  int numFilters, i;
  UInt32 headerSize = (UInt32)header[0] << 2;

  if (CrcCalc(header, headerSize) != GetUi32(header + headerSize))
    return SZ_ERROR_ARCHIVE;

  pos = 1;
  if (pos == headerSize)
    return SZ_ERROR_ARCHIVE;
  p->flags = header[pos++];

  if (XzBlock_HasPackSize(p))
  {
    READ_VARINT_AND_CHECK(header, pos, headerSize, &p->packSize);
    if (p->packSize == 0 || p->packSize + headerSize >= (UInt64)1 << 63)
      return SZ_ERROR_ARCHIVE;
  }

  if (XzBlock_HasUnpackSize(p))
    READ_VARINT_AND_CHECK(header, pos, headerSize, &p->unpackSize);

  numFilters = XzBlock_GetNumFilters(p);
  for (i = 0; i < numFilters; i++)
  {
    CXzFilter *filter = p->filters + i;
    UInt64 size;
    READ_VARINT_AND_CHECK(header, pos, headerSize, &filter->id);
    READ_VARINT_AND_CHECK(header, pos, headerSize, &size);
    if (size > headerSize - pos || size > XZ_FILTER_PROPS_SIZE_MAX)
      return SZ_ERROR_ARCHIVE;
    filter->propsSize = (UInt32)size;
    memcpy(filter->props, header + pos, (size_t)size);
    pos += (unsigned)size;
  }

  while (pos < headerSize)
    if (header[pos++] != 0)
      return SZ_ERROR_ARCHIVE;
  return SZ_OK;
}
