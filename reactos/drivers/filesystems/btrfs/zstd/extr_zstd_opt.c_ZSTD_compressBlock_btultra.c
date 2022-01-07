
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tmpRep ;
struct TYPE_11__ {scalar_t__ sequences; scalar_t__ sequencesStart; } ;
typedef TYPE_2__ seqStore_t ;
struct TYPE_13__ {scalar_t__ litLengthSum; } ;
struct TYPE_10__ {scalar_t__ dictLimit; scalar_t__ lowLimit; size_t base; } ;
struct TYPE_12__ {scalar_t__ nextToUpdate; scalar_t__ nextToUpdate3; TYPE_4__ opt; TYPE_1__ window; } ;
typedef TYPE_3__ ZSTD_matchState_t ;
typedef scalar_t__ U32 ;


 int DEBUGLOG (int,char*,...) ;
 size_t ZSTD_BLOCKSIZE_MAX ;
 int ZSTD_REP_NUM ;
 size_t ZSTD_compressBlock_opt_generic (TYPE_3__*,TYPE_2__*,scalar_t__*,void const*,size_t,int,int ) ;
 int ZSTD_noDict ;
 int ZSTD_resetSeqStore (TYPE_2__*) ;
 int ZSTD_upscaleStats (TYPE_4__*) ;
 int assert (int) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;

size_t ZSTD_compressBlock_btultra(
        ZSTD_matchState_t* ms, seqStore_t* seqStore, U32 rep[ZSTD_REP_NUM],
        const void* src, size_t srcSize)
{
    DEBUGLOG(5, "ZSTD_compressBlock_btultra (srcSize=%zu)", srcSize);
    return ZSTD_compressBlock_opt_generic(ms, seqStore, rep, src, srcSize, 2 , ZSTD_noDict);
}
