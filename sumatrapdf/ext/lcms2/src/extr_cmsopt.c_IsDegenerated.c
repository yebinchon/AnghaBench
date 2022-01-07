
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t cmsUInt32Number ;
struct TYPE_3__ {size_t nEntries; int* Table16; } ;
typedef TYPE_1__ cmsToneCurve ;
typedef int cmsBool ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static
cmsBool IsDegenerated(const cmsToneCurve* g)
{
    cmsUInt32Number i, Zeros = 0, Poles = 0;
    cmsUInt32Number nEntries = g ->nEntries;

    for (i=0; i < nEntries; i++) {

        if (g ->Table16[i] == 0x0000) Zeros++;
        if (g ->Table16[i] == 0xffff) Poles++;
    }

    if (Zeros == 1 && Poles == 1) return FALSE;
    if (Zeros > (nEntries / 20)) return TRUE;
    if (Poles > (nEntries / 20)) return TRUE;

    return FALSE;
}
