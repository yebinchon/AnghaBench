
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* rep; } ;
typedef TYPE_1__ repcodes_t ;
typedef int newReps ;
typedef scalar_t__ U32 ;


 scalar_t__ const ZSTD_REP_MOVE ;
 scalar_t__ const ZSTD_REP_NUM ;
 int memcpy (TYPE_1__*,scalar_t__ const*,int) ;

__attribute__((used)) static repcodes_t ZSTD_updateRep(U32 const rep[3], U32 const offset, U32 const ll0)
{
    repcodes_t newReps;
    if (offset >= ZSTD_REP_NUM) {
        newReps.rep[2] = rep[1];
        newReps.rep[1] = rep[0];
        newReps.rep[0] = offset - ZSTD_REP_MOVE;
    } else {
        U32 const repCode = offset + ll0;
        if (repCode > 0) {
            U32 const currentOffset = (repCode==ZSTD_REP_NUM) ? (rep[0] - 1) : rep[repCode];
            newReps.rep[2] = (repCode >= 2) ? rep[1] : rep[2];
            newReps.rep[1] = rep[0];
            newReps.rep[0] = currentOffset;
        } else {
            memcpy(&newReps, rep, sizeof(newReps));
        }
    }
    return newReps;
}
