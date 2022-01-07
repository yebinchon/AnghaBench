
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fastMode; scalar_t__ tableLog; } ;
struct TYPE_3__ {scalar_t__ nbBits; int symbol; scalar_t__ newState; } ;
typedef TYPE_1__ FSEv05_decode_t ;
typedef TYPE_2__ FSEv05_DTableHeader ;
typedef int FSEv05_DTable ;
typedef int BYTE ;



size_t FSEv05_buildDTable_rle (FSEv05_DTable* dt, BYTE symbolValue)
{
    void* ptr = dt;
    FSEv05_DTableHeader* const DTableH = (FSEv05_DTableHeader*)ptr;
    void* dPtr = dt + 1;
    FSEv05_decode_t* const cell = (FSEv05_decode_t*)dPtr;

    DTableH->tableLog = 0;
    DTableH->fastMode = 0;

    cell->newState = 0;
    cell->symbol = symbolValue;
    cell->nbBits = 0;

    return 0;
}
