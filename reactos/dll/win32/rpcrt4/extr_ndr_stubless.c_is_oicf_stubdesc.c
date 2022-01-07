
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Version; } ;
typedef TYPE_1__* PMIDL_STUB_DESC ;
typedef int BOOL ;



__attribute__((used)) static inline BOOL is_oicf_stubdesc(const PMIDL_STUB_DESC pStubDesc)
{
    return pStubDesc->Version >= 0x20000;
}
