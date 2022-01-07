
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ZSTD_customMem ;
struct TYPE_4__ {struct TYPE_4__* dictBuffer; struct TYPE_4__* workspace; int customMem; } ;
typedef TYPE_1__ ZSTD_CDict ;


 int ZSTD_free (TYPE_1__*,int const) ;

size_t ZSTD_freeCDict(ZSTD_CDict* cdict)
{
    if (cdict==((void*)0)) return 0;
    { ZSTD_customMem const cMem = cdict->customMem;
        ZSTD_free(cdict->workspace, cMem);
        ZSTD_free(cdict->dictBuffer, cMem);
        ZSTD_free(cdict, cMem);
        return 0;
    }
}
