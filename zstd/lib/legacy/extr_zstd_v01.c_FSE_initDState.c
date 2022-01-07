
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int const* table; int state; } ;
struct TYPE_4__ {int tableLog; } ;
typedef TYPE_1__ FSE_DTableHeader ;
typedef int FSE_DTable ;
typedef int FSE_DStream_t ;
typedef TYPE_2__ FSE_DState_t ;


 int FSE_readBits (int *,int ) ;
 int FSE_reloadDStream (int *) ;

__attribute__((used)) static void FSE_initDState(FSE_DState_t* DStatePtr, FSE_DStream_t* bitD, const FSE_DTable* dt)
{
    const void* ptr = dt;
    const FSE_DTableHeader* const DTableH = (const FSE_DTableHeader*)ptr;
    DStatePtr->state = FSE_readBits(bitD, DTableH->tableLog);
    FSE_reloadDStream(bitD);
    DStatePtr->table = dt + 1;
}
