
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
typedef int z_stream ;
struct TYPE_10__ {int * opaque; int * member_2; int member_1; int member_0; } ;
struct TYPE_9__ {TYPE_3__ customMem; int allocFunc; } ;
typedef TYPE_2__ ZWRAP_CCtx ;
typedef TYPE_3__ ZSTD_customMem ;
struct TYPE_8__ {int opaque; scalar_t__ (* zalloc ) (int ,int,int) ;scalar_t__ zfree; } ;


 int ZWRAP_allocFunction ;
 int ZWRAP_freeFunction ;
 scalar_t__ calloc (int,int) ;
 int memcpy (int *,TYPE_1__*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ stub1 (int ,int,int) ;

__attribute__((used)) static ZWRAP_CCtx* ZWRAP_createCCtx(z_streamp strm)
{
    ZWRAP_CCtx* zwc;

    if (strm->zalloc && strm->zfree) {
        zwc = (ZWRAP_CCtx*)strm->zalloc(strm->opaque, 1, sizeof(ZWRAP_CCtx));
        if (zwc==((void*)0)) return ((void*)0);
        memset(zwc, 0, sizeof(ZWRAP_CCtx));
        memcpy(&zwc->allocFunc, strm, sizeof(z_stream));
        { ZSTD_customMem ZWRAP_customMem = { ZWRAP_allocFunction, ZWRAP_freeFunction, ((void*)0) };
            ZWRAP_customMem.opaque = &zwc->allocFunc;
            zwc->customMem = ZWRAP_customMem;
        }
    } else {
        zwc = (ZWRAP_CCtx*)calloc(1, sizeof(*zwc));
        if (zwc==((void*)0)) return ((void*)0);
    }

    return zwc;
}
