
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * vals; } ;
typedef TYPE_1__ paramValues_t ;
typedef size_t U32 ;


 int BOUNDCHECK (int ,int ,int ) ;
 size_t NUM_PARAMS ;
 int * maxtable ;
 int * mintable ;

__attribute__((used)) static int paramValid(const paramValues_t paramTarget)
{
    U32 i;
    for(i = 0; i < NUM_PARAMS; i++) {
        BOUNDCHECK(paramTarget.vals[i], mintable[i], maxtable[i]);
    }
    return 1;
}
