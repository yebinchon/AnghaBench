
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SRes ;
typedef int ISeqInStream ;
typedef int CXzStreamFlags ;
typedef int Byte ;


 int RINOK (int ) ;
 int SZ_ERROR_NO_ARCHIVE ;
 int SeqInStream_Read2 (int *,int *,int,int ) ;
 int XZ_SIG ;
 int XZ_SIG_SIZE ;
 int XZ_STREAM_HEADER_SIZE ;
 int Xz_ParseHeader (int *,int *) ;
 scalar_t__ memcmp (int *,int ,int ) ;

SRes Xz_ReadHeader(CXzStreamFlags *p, ISeqInStream *inStream)
{
  Byte sig[XZ_STREAM_HEADER_SIZE];
  RINOK(SeqInStream_Read2(inStream, sig, XZ_STREAM_HEADER_SIZE, SZ_ERROR_NO_ARCHIVE));
  if (memcmp(sig, XZ_SIG, XZ_SIG_SIZE) != 0)
    return SZ_ERROR_NO_ARCHIVE;
  return Xz_ParseHeader(p, sig);
}
