
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * rep; int hufTable; int OFTable; int MLTable; int LLTable; } ;
struct TYPE_10__ {int dictSize; TYPE_2__ entropy; scalar_t__ entropyPresent; scalar_t__ dictContent; int dictID; } ;
typedef TYPE_3__ ZSTD_DDict ;
struct TYPE_8__ {int * rep; } ;
struct TYPE_11__ {int ddictIsCold; char const* dictEnd; char const* previousDstEnd; int litEntropy; int fseEntropy; TYPE_1__ entropy; int HUFptr; int OFTptr; int MLTptr; int LLTptr; scalar_t__ virtualStart; scalar_t__ prefixStart; int dictID; } ;
typedef TYPE_4__ ZSTD_DCtx ;
typedef char BYTE ;


 int CHECK_F (int ) ;
 int DEBUGLOG (int,char*,...) ;
 int ZSTD_decompressBegin (TYPE_4__*) ;
 int assert (int ) ;

size_t ZSTD_decompressBegin_usingDDict(ZSTD_DCtx* dctx, const ZSTD_DDict* ddict)
{
    DEBUGLOG(4, "ZSTD_decompressBegin_usingDDict");
    assert(dctx != ((void*)0));
    if (ddict) {
        dctx->ddictIsCold = (dctx->dictEnd != (const char*)ddict->dictContent + ddict->dictSize);
        DEBUGLOG(4, "DDict is %s",
                    dctx->ddictIsCold ? "~cold~" : "hot!");
    }
    CHECK_F( ZSTD_decompressBegin(dctx) );
    if (ddict) {
        dctx->dictID = ddict->dictID;
        dctx->prefixStart = ddict->dictContent;
        dctx->virtualStart = ddict->dictContent;
        dctx->dictEnd = (const BYTE*)ddict->dictContent + ddict->dictSize;
        dctx->previousDstEnd = dctx->dictEnd;
        if (ddict->entropyPresent) {
            dctx->litEntropy = 1;
            dctx->fseEntropy = 1;
            dctx->LLTptr = ddict->entropy.LLTable;
            dctx->MLTptr = ddict->entropy.MLTable;
            dctx->OFTptr = ddict->entropy.OFTable;
            dctx->HUFptr = ddict->entropy.hufTable;
            dctx->entropy.rep[0] = ddict->entropy.rep[0];
            dctx->entropy.rep[1] = ddict->entropy.rep[1];
            dctx->entropy.rep[2] = ddict->entropy.rep[2];
        } else {
            dctx->litEntropy = 0;
            dctx->fseEntropy = 0;
        }
    }
    return 0;
}
