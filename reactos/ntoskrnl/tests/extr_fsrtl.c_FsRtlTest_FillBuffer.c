
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONGLONG ;
typedef int ULONG ;
struct TYPE_3__ {scalar_t__ QuadPart; } ;
typedef int PVOID ;
typedef scalar_t__* PULONGLONG ;
typedef TYPE_1__ LARGE_INTEGER ;



void FsRtlTest_FillBuffer(LARGE_INTEGER Start, ULONG Length, PVOID Buffer) {
    ULONG i = 0;
    PULONGLONG Index = (PULONGLONG) Buffer;

    for (i=0; i<Length/sizeof(ULONGLONG); i++) {
        Index[i] = Start.QuadPart + i;
    }

    return;
 }
