
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* pStubDesc; } ;
struct TYPE_6__ {int Version; int aUserMarshalQuadruple; int pfnFree; int pfnAllocate; } ;
struct TYPE_5__ {int aUserMarshalQuadruple; } ;
typedef TYPE_2__ MIDL_STUB_DESC ;


 int NdrOleAllocate ;
 int NdrOleFree ;
 TYPE_4__* get_ndr_types_proxy_info () ;

__attribute__((used)) static void init_stub_desc(MIDL_STUB_DESC *desc)
{
    desc->pfnAllocate = NdrOleAllocate;
    desc->pfnFree = NdrOleFree;
    desc->Version = 0x50002;
    desc->aUserMarshalQuadruple = get_ndr_types_proxy_info()->pStubDesc->aUserMarshalQuadruple;

}
