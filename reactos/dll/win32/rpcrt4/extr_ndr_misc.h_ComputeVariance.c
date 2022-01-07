
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ ULONG ;
struct TYPE_4__ {scalar_t__ ActualCount; scalar_t__ Offset; } ;
typedef TYPE_1__* PMIDL_STUB_MESSAGE ;
typedef int PFORMAT_STRING ;


 int ComputeConformanceOrVariance (TYPE_1__*,unsigned char*,int ,scalar_t__,scalar_t__*) ;

__attribute__((used)) static inline PFORMAT_STRING ComputeVariance(PMIDL_STUB_MESSAGE pStubMsg, unsigned char *pMemory, PFORMAT_STRING pFormat, ULONG def)
{
    PFORMAT_STRING ret;
    ULONG_PTR ActualCount = pStubMsg->ActualCount;

    pStubMsg->Offset = 0;
    ret = ComputeConformanceOrVariance(pStubMsg, pMemory, pFormat, def, &ActualCount);
    pStubMsg->ActualCount = (ULONG)ActualCount;
    return ret;
}
