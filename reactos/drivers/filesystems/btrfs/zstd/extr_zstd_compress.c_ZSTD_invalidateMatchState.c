
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ litLengthSum; } ;
struct TYPE_7__ {scalar_t__ dictLimit; } ;
struct TYPE_6__ {int * dictMatchState; TYPE_1__ opt; scalar_t__ loadedDictEnd; TYPE_3__ window; scalar_t__ nextToUpdate3; scalar_t__ nextToUpdate; } ;
typedef TYPE_2__ ZSTD_matchState_t ;


 int ZSTD_window_clear (TYPE_3__*) ;

__attribute__((used)) static void ZSTD_invalidateMatchState(ZSTD_matchState_t* ms)
{
    ZSTD_window_clear(&ms->window);

    ms->nextToUpdate = ms->window.dictLimit + 1;
    ms->nextToUpdate3 = ms->window.dictLimit + 1;
    ms->loadedDictEnd = 0;
    ms->opt.litLengthSum = 0;
    ms->dictMatchState = ((void*)0);
}
