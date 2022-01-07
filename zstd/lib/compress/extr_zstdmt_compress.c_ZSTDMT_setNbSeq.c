
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rawSeq ;
typedef int ZSTDMT_seqPool ;


 int ZSTDMT_setBufferSize (int * const,size_t const) ;

__attribute__((used)) static void ZSTDMT_setNbSeq(ZSTDMT_seqPool* const seqPool, size_t const nbSeq)
{
  ZSTDMT_setBufferSize(seqPool, nbSeq * sizeof(rawSeq));
}
