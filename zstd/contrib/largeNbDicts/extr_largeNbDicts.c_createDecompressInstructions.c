
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nbDDict; } ;
struct TYPE_5__ {TYPE_2__ dictionaries; scalar_t__ dictNb; int nbDicts; int * dctx; } ;
typedef TYPE_1__ decompressInstructions ;
typedef TYPE_2__ ddict_collection_t ;


 int * ZSTD_createDCtx () ;
 int assert (int ) ;

decompressInstructions createDecompressInstructions(ddict_collection_t dictionaries)
{
    decompressInstructions di;
    di.dctx = ZSTD_createDCtx();
    assert(di.dctx != ((void*)0));
    di.nbDicts = dictionaries.nbDDict;
    di.dictNb = 0;
    di.dictionaries = dictionaries;
    return di;
}
