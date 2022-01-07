
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_4__ {int MaxCount; } ;
typedef TYPE_1__* PMIDL_STUB_MESSAGE ;
typedef int PFORMAT_STRING ;


 int ComputeConformanceOrVariance (TYPE_1__*,unsigned char*,int ,int ,int *) ;

__attribute__((used)) static inline PFORMAT_STRING ComputeConformance(PMIDL_STUB_MESSAGE pStubMsg, unsigned char *pMemory, PFORMAT_STRING pFormat, ULONG def)
{
    return ComputeConformanceOrVariance(pStubMsg, pMemory, pFormat, def, &pStubMsg->MaxCount);
}
