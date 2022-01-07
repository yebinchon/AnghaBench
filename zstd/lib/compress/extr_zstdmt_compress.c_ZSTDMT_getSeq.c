
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int rawSeqStore_t ;
struct TYPE_4__ {scalar_t__ bufferSize; } ;
typedef TYPE_1__ ZSTDMT_seqPool ;


 int ZSTDMT_getBuffer (TYPE_1__*) ;
 int bufferToSeq (int ) ;
 int kNullRawSeqStore ;

__attribute__((used)) static rawSeqStore_t ZSTDMT_getSeq(ZSTDMT_seqPool* seqPool)
{
    if (seqPool->bufferSize == 0) {
        return kNullRawSeqStore;
    }
    return bufferToSeq(ZSTDMT_getBuffer(seqPool));
}
