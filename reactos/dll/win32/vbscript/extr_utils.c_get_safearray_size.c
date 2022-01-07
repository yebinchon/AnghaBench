
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t USHORT ;
typedef int ULONG ;
struct TYPE_5__ {size_t cDims; TYPE_1__* rgsabound; } ;
struct TYPE_4__ {int cElements; } ;
typedef TYPE_2__ SAFEARRAY ;



__attribute__((used)) static ULONG get_safearray_size(SAFEARRAY *sa)
{
    ULONG ret = 1;
    USHORT i;

    if(!sa)
        return 0;

    for(i=0; i<sa->cDims && ret; i++)
        ret *= sa->rgsabound[i].cElements;
    return ret;
}
