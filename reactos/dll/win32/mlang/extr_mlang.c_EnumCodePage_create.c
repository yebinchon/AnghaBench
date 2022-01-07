
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_11__ {size_t number_of_cp; TYPE_1__* mime_cp_info; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_10__ {int ref; int total; TYPE_2__ IEnumCodePage_iface; int * cpinfo; scalar_t__ pos; } ;
struct TYPE_8__ {int flags; } ;
typedef int MLang_impl ;
typedef int MIMECPINFO ;
typedef int LANGID ;
typedef TYPE_2__ IEnumCodePage ;
typedef int HRESULT ;
typedef TYPE_3__ EnumCodePage_impl ;
typedef int DWORD ;


 size_t ARRAY_SIZE (TYPE_4__*) ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 int IEnumCodePage_vtbl ;
 int MIMECONTF_MIME_LATEST ;
 int S_OK ;
 int TRACE (char*,int,int,...) ;
 int fill_cp_info (TYPE_4__*,size_t,int ) ;
 TYPE_4__* mlang_data ;

__attribute__((used)) static HRESULT EnumCodePage_create( MLang_impl* mlang, DWORD grfFlags,
                     LANGID LangId, IEnumCodePage** ppEnumCodePage )
{
    EnumCodePage_impl *ecp;
    MIMECPINFO *cpinfo;
    UINT i, n;

    TRACE("%p, %08x, %04x, %p\n", mlang, grfFlags, LangId, ppEnumCodePage);

    if (!grfFlags)
        grfFlags = MIMECONTF_MIME_LATEST;

    ecp = HeapAlloc( GetProcessHeap(), 0, sizeof (EnumCodePage_impl) );
    ecp->IEnumCodePage_iface.lpVtbl = &IEnumCodePage_vtbl;
    ecp->ref = 1;
    ecp->pos = 0;
    ecp->total = 0;
    for (i = 0; i < ARRAY_SIZE(mlang_data); i++)
    {
        for (n = 0; n < mlang_data[i].number_of_cp; n++)
        {
            if (mlang_data[i].mime_cp_info[n].flags & grfFlags)
                ecp->total++;
        }
    }

    ecp->cpinfo = HeapAlloc(GetProcessHeap(), 0,
                            sizeof(MIMECPINFO) * ecp->total);
    cpinfo = ecp->cpinfo;

    for (i = 0; i < ARRAY_SIZE(mlang_data); i++)
    {
        for (n = 0; n < mlang_data[i].number_of_cp; n++)
        {
            if (mlang_data[i].mime_cp_info[n].flags & grfFlags)
                fill_cp_info(&mlang_data[i], n, cpinfo++);
        }
    }

    TRACE("enumerated %d codepages with flags %08x\n", ecp->total, grfFlags);

    *ppEnumCodePage = &ecp->IEnumCodePage_iface;

    return S_OK;
}
